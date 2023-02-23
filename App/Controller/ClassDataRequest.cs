using Archive.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Archive.Controller
{
	internal class ClassDataRequest
	{
		public static ArchiveEntities ArchiveEntities { get; set; } = new ArchiveEntities();
	}
}
