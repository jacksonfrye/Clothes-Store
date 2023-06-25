using Mood.EF2;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Mood.Draw
{
    public class ContactDraw
    {
        QuanLyDBContext db = null;
        public ContactDraw()
        {
            db = new QuanLyDBContext();
        }
        public Contact getActiveContent()
        {
            return db.Contacts.SingleOrDefault(x => x.Status == true);
        }
      
        public long InserFeebBack(Feed_Back feebBack)
        {
            db.Feedbacks.Add(feebBack);
            db.SaveChanges();
            return feebBack.IDFeedBack;
        }
    }
}
