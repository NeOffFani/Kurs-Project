//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace KP.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class TestRequests
    {
        public int Id { get; set; }
        public int IdMachine { get; set; }
        public System.DateTime DateOfCreate { get; set; }
        public System.DateTime DateOfTesting { get; set; }
        public string Result { get; set; }
        public int UserId { get; set; }
        public Nullable<System.DateTime> DateOfClose { get; set; }
        public string Creator { get; set; }
    
        public virtual Machine Machine { get; set; }
        public virtual User User { get; set; }
    }
}
