******************************************************
* _   _      _             __  __          _ _       *
*| \ | | ___| |_ _ __ ___ |  \/  | ___  __| (_) __ _ *
*|  \| |/ _ \ __| '__/ _ \| |\/| |/ _ \/ _` | |/ _` |*
*| |\  |  __/ |_| | | (_) | |  | |  __/ (_| | | (_| |*
*|_| \_|\___|\__|_|  \___/|_|  |_|\___|\__,_|_|\__,_|*
*		www.netromedia.com   		     *
*             support@netromedia.com		     *
******************************************************

Setting up your Secure Player (ASP.NET C#)

Important note:  Do NOT start by simply copying and pasting the aspx and code-behind files into your project.  

Visual Studio does not like that - the pages will probably end up detached as a result.

Follow these directions to get your player up and running smoothly:

 - In your web site, create a new blank aspx document.
 - Copy the code from MySecurePlayer.aspx and paste it beneath the “Page” tag in your aspx file.
 - Copy the code from MySecurePlayer.aspx.cs and replace the “page load” section of your code-behind with this copied code.
 - Fill in your player information in the code-behind file, as indicated in the code.
 - Hit “Build” – you can now view a stream in your secure player!