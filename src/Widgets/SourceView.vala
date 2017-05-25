/***
  BEGIN LICENSE
  Copyright (C) 2017 Lains
  This program is free software: you can redistribute it and/or modify it
  under the terms of the GNU Lesser General Public License version 3, as published
  by the Free Software Foundation.
  This program is distributed in the hope that it will be useful, but
  WITHOUT ANY WARRANTY; without even the implied warranties of
  MERCHANTABILITY, SATISFACTORY QUALITY, or FITNESS FOR A PARTICULAR
  PURPOSE.  See the GNU General Public License for more details.
  You should have received a copy of the GNU General Public License along
  with this program.  If not, see <http://www.gnu.org/licenses/>
  END LICENSE
***/

namespace Notejot.Widgets {
    public class SourceView : Gtk.SourceView {
        public new Gtk.SourceBuffer buffer;

        public SourceView () {
            buffer = new Gtk.SourceBuffer (null);
            this.set_buffer (buffer);

            this.set_wrap_mode (Gtk.WrapMode.WORD_CHAR);
            this.top_margin = 12;
            this.left_margin = 12;
            this.bottom_margin = 12;
            this.right_margin = 12;
        }

        public void set_text (string text, bool opening = true) {
            if (opening) {
                buffer.begin_not_undoable_action ();
            } else {
                buffer.end_not_undoable_action ();
            }

            buffer.text = text;
        }
    }
}