using System.ComponentModel.DataAnnotations;
using System.Text.RegularExpressions;


namespace WebApi.DTO.Request
{
    public class SignUpRequestDTO
    {
        // [Required(ErrorMessage = "Username tidak boleh kosong")]
        // [StringLength(100, MinimumLength = 1, ErrorMessage = "Username harus memiliki panjang antara 1 dan 100 karakter")]
        public string Username { get; set; }

        // [Required(ErrorMessage = "Fullname tidak boleh kosong")]
        // [StringLength(255, MinimumLength = 1, ErrorMessage = "Fullname harus memiliki panjang antara 1 dan 255 karakter")]
        public string Fullname { get; set; }

        // [Required(ErrorMessage = "Password tidak boleh kosong")]
        // [StringLength(50, MinimumLength = 6, ErrorMessage = "Password harus memiliki panjang antara 6 dan 50 karakter")]
        // [RegularExpression(@"^(?=.*[a-zA-Z])(?=.*\d).{6,50}$", ErrorMessage = "Password harus mengandung setidaknya satu huruf dan satu angka")]
        public string Password { get; set; }
    }


}
