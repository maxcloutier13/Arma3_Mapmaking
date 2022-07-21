---------------------------------------------------------
      ·:  PAAplug v1.2 for Adobe Photoshop  :·
---------------------------------------------------------

PAA texture format plugin for Adobe Photoshop for 
loading and saving OFP/Armed Assault/ArmA 2 PAA textures.

To install, place the PAAplug.8bi file to your Photoshop
plug-ins directory and restart Photoshop. PAA files should
appear in the file formats list when opening/saving files.

PAAplug has certain limitations:
- Only 8 bits per channel RGB/RGBA images are supported
- Image width and height must be multiples of 4
- Index palette format not supported (4747)
- PAA swizzle tag is not fully suppoted and saving with
  swizzling is not implemented
  
When opening a PAA file, PAAplug will ask if you wish to
discard the image mipmaps. Choosing yes will only load
the primary level, when saving you must have mipmap
generation option enabled to generate new mipmaps. 
Choosing no will open the mipmaps in the same image, 
with the primary level on the left of the image. When
saving, check the 'use existing mipmaps' setting and
ensure the number of mipmaps is the same as in the image.

If you are opening multiple PAA files, you can hold down
shift when clicking yes/no on the open dialog to suppress
further dialogs.

Queries can also be disabled from the about menu of the
plugin (Help/About Plug-In/PAAplug in Photoshop)

The save PAA dialog has the following settings:
Format sets the PAA format. Selecting 'autodetect' will pick
a DXT format based on information about the alpha channel
as follows:
- No alpha channel or alpha filled with 255: DXT1
- Alpha channel with only 255 and 0: DXT1a
- Alpha channel with other than 255 or 0: DXT5

Autodetect should be good for most uses as long as the
alpha channel is used properly.

'Dither' setting enables dithering for filtering mipmaps
'Filter alpha' setting causes alpha channel to be filtered
when rendered by the game. Disable if you see 'ghost outlines'
in places with alpha blending.
'Quality' setting sets the quality used when converting
to DXT format. Use lower settings if you want to do
quick tests with textures as saving large textures is
much faster with lower quality.

Note that the compression used in PAA format is lossy,
so you should not work with PAA files directly when 
creating textures. Only save to PAA when you have a
complete texture to try in game, and keep a non-lossy
copy of the original texture.

---------------------------------------------------------
  credits
---------------------------------------------------------

Made by Kegetys <kegetys [ät] dnainternet.net> 

Thanks to:
Feersum Endjinn
nVidia for for nVidia DXT library
Simon Brown for Squish DXT library

---------------------------------------------------------
  license & disclaimer
---------------------------------------------------------

You are permitted to install and use this software for 
personal entertainment purposes only. Any commercial,
military or educational use is strictly forbidden without
permission from the author. 

You are free to distribute this software as you wish, as 
long as it is kept 100% free of charge, it is not modified 
in any way and this readme file is distributed with it.

The author takes no responsibility for any damages this 
program may cause, use at your own risk.

---------------------------------------------------------