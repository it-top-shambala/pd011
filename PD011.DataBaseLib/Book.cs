using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PD011.DataBaseLib
{
    public class Book
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public Genre Genre { get; set; }
        public Series Series { get; set; }
        public int ChapterInSeries { get; set; }
        public int YearOfCreations { get; set; }
        public List<Author> Authors { get; set; }
        public BookPublication BookPublication { get; set; }

    }
}
