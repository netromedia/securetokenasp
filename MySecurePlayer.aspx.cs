		// *************** ATTENTION, DEVELOPER! ***********************
		// This section (enclosed by starry lines) is the
		// only area you need to change to get your player
		// working.  Just fill in the following variables.
		// sFLOWPLAYER_KEY is optional.
		//*
        protected String sPRIMARY_DNS		= "150.obj.netromedia.com";
        protected String sPUB_POINT			= "channelname";
        protected String sSTREAM_NAME		= "mp4:Extremists.m4v";	// or "channelname" again for live streams
		protected String sSECRET_CODE		= "CustomAuthToken123";
		protected String sFLOWPLAYER_KEY	= "#$b2f1e390784a1491f01";
		//*
		// ********************* STOP HERE *****************************

		protected String sTIME_STAMP		= "";
		protected String sSIGNATURE			= "";
		protected String sQUERY_STRING		= "";

		private void Page_Load(object sender, EventArgs e)
        {
			// Initialize security vars...
			sTIME_STAMP = time().ToString();
			sSIGNATURE = md5(sSTREAM_NAME + sTIME_STAMP + sSECRET_CODE);
			sQUERY_STRING	= "?t=" + sTIME_STAMP + "&s=" + sSIGNATURE;
        }

		// C# equivalent of php time() function
		private long time()
		{
			DateTime unixEpoch = new DateTime(1970, 1, 1, 0, 0, 0);
			TimeSpan span = DateTime.UtcNow.Subtract(unixEpoch);

			return (long)span.TotalSeconds;
		}

		// C# equivalent of php md5(string) function
		public static string md5(string password)
		{
			byte[] textBytes = System.Text.Encoding.Default.GetBytes(password);
			try
			{
				System.Security.Cryptography.MD5CryptoServiceProvider cryptHandler;
				cryptHandler = new System.Security.Cryptography.MD5CryptoServiceProvider();
				byte[] hash = cryptHandler.ComputeHash(textBytes);
				string ret = "";
				foreach (byte a in hash)
				{
					if (a < 16)
						ret += "0" + a.ToString("x");
					else
						ret += a.ToString("x");
				}
				return ret;
			}
			catch
			{
				throw;
			}
		}