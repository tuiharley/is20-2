using System;
using System.Drawing;
using System.IO;

namespace ImageHelper
{
	public class ImageResize
	{
		private double m_width, m_height;
		private bool m_use_aspect = true;
		private bool m_use_percentage = false;
		private string m_image_path;
		private Image m_src_image, m_dst_image;
		private ImageResize m_cache;
		private Graphics m_graphics;

		public string File
		{
			get { return m_image_path; }
			set { m_image_path = value; }
		}

		public Image Image
		{
			get { return m_src_image; }
			set { m_src_image = value; }
		}

		public bool PreserveAspectRatio
		{
			get { return m_use_aspect; }
			set { m_use_aspect = value; }
		}

		public bool UsePercentages
		{
			get { return m_use_percentage; }
			set { m_use_percentage = value; }
		}

		public double Width
		{
			get { return m_width; }
			set { m_width = value; }
		}

		public double Height
		{
			get { return m_height; }
			set { m_height = value; }
		}

		protected virtual bool IsSameSrcImage(ImageResize other)
		{
			if (other != null)
			{
				return (File == other.File
					&& Image == other.Image);
			}
		
			return false;
		}

		protected virtual bool IsSameDstImage(ImageResize other)
		{
			if (other != null)
			{
				return (Width == other.Width 
					&& Height == other.Height
					&& UsePercentages == other.UsePercentages 
					&& PreserveAspectRatio == other.PreserveAspectRatio);
			}
		
			return false;
		}

		public virtual Image GetThumbnail()
		{
			// Flag whether a new image is required
			bool recalculate = false;
			double new_width = Width;
			double new_height = Height;
						
			// Is there a cached source image available? If not,
			// load the image if a filename was specified; otherwise
			// use the image in the Image property
			if (!IsSameSrcImage(m_cache))
			{
				if (m_image_path.Length > 0)
				{
					// Load via stream rather than Image.FromFile to release the file
					// handle immediately
					if (m_src_image != null)
						m_src_image.Dispose();
	
					// Wrap the FileStream in a "using" directive, to ensure the handle
					// gets closed when the object goes out of scope
					using(Stream stream = new FileStream(m_image_path, FileMode.Open))
						m_src_image = Image.FromStream(stream);
					
					recalculate = true;
				}
			}
			
			// Check whether the required destination image properties have
			// changed
			if (!IsSameDstImage(m_cache))
			{
				// Yes, so we need to recalculate.
				// If you opted to specify width and height as percentages of the original
				// image's width and height, compute these now
				if (UsePercentages)
				{
					if (Width != 0)
					{
						new_width = (double) m_src_image.Width * Width / 100;
		
						if (PreserveAspectRatio)
						{
							new_height = new_width * m_src_image.Height / (double) m_src_image.Width;
						}
					}
					
					if (Height != 0)
					{
						new_height = (double) m_src_image.Height * Height / 100;
				
						if (PreserveAspectRatio)
						{
							new_width = new_height * m_src_image.Width / (double) m_src_image.Height;
						}
					}
				}
				else
				{
					// If you specified an aspect ratio and absolute width or height, then calculate this 
					// now; if you accidentally specified both a width and height, ignore the 
					// PreserveAspectRatio flag
					if (PreserveAspectRatio)
					{
						if (Width != 0 && Height == 0)
						{
							new_height = (Width / (double) m_src_image.Width) * m_src_image.Height;
						}
						else if (Height != 0 && Width == 0)
						{
							new_width = (Height / (double) m_src_image.Height) * m_src_image.Width;
						}
					}
				}

				recalculate = true;
			}

			if (recalculate)
			{
				// Calculate the new image
				if (m_dst_image != null)
				{
					m_dst_image.Dispose();
					m_graphics.Dispose();
				}

				Bitmap bitmap = new Bitmap((int)new_width, (int)new_height, m_src_image.PixelFormat);
				m_graphics = Graphics.FromImage(bitmap);
				m_graphics.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.HighQuality;
				m_graphics.InterpolationMode = System.Drawing.Drawing2D.InterpolationMode.HighQualityBicubic;
		
				m_graphics.DrawImage(m_src_image, 0, 0, bitmap.Width, bitmap.Height);
				m_dst_image = bitmap;

				// Cache the image and its associated settings
				m_cache = this.MemberwiseClone() as ImageResize;
			}
	
			return m_dst_image;
		}

		~ImageResize()
		{
			// Free resources
			if (m_dst_image != null)
			{
				m_dst_image.Dispose();
				m_graphics.Dispose();
			}

			if (m_src_image != null)
				m_src_image.Dispose();
		}
	}
}
