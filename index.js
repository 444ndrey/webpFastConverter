const sharp = require('sharp');
const fs = require('fs');
const path = require('path');

const convertToWebP = (inputPath) => {
  const outputPath = path.parse(inputPath);
  const outputFilePath = `${outputPath.dir}\\${outputPath.name}-w.webp`;

  sharp(inputPath)
    .webp()
    .toFile(outputFilePath, (err, info) => {
      if (err) {
        console.error('Ошибка конвертации:', err);
        return;
      }
      console.log('Изображение конвертировано в WebP:', info);
    });
};

const inputPath = process.argv[2]; // Получаем путь к файлу из аргументов командной строки
if (inputPath && fs.existsSync(inputPath)) {
  convertToWebP(inputPath);
} else {
  console.log('Путь к изображению не указан или файл не существует.');
}
