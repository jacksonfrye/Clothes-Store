using Mood.EF2;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Mood.Draw
{
    public class FooterDraw
    {
        QuanLyDBContext db = null;
        public FooterDraw()
        {
            db = new QuanLyDBContext();
        }
        public Footer getFooter()
        {
            return db.Footers.SingleOrDefault(x => x.Status == true);
        }
    }
}
