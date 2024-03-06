import os
import sys
import argparse
from PIL import Image


MAX_SIZE = 1000


def optimize_images(input_dir, output_dir, quality):
    for root, dirs, files in os.walk(input_dir):
        for file in files:
            if file.endswith(".jpg") or file.endswith(".png"):
                file_path = os.path.join(root, file)
                optimize_image(input_dir, file_path, output_dir, quality)


def optimize_image(input_dir, file_path, output_dir, quality):
    print(f"Optimizing {file_path}")
    try:
        img = Image.open(file_path)
        img.thumbnail((MAX_SIZE, MAX_SIZE))
        img = img.convert("RGB")
        new_file_path = file_path.replace(input_dir, output_dir)
        new_file_path = new_file_path.replace(".png", ".jpg")
        new_file_dir = os.path.dirname(new_file_path)
        os.makedirs(new_file_dir, exist_ok=True)
        img.save(new_file_path, "JPEG", optimize=True, quality=quality)
    except Exception as e:
        print(f"Error optimizing {file_path}: {e}")


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--input", required=True, help="Input directory")
    parser.add_argument("--output", required=True, help="Output directory")
    parser.add_argument("--quality", type=int, default=70, help="JPEG quality")
    args = parser.parse_args()
    input_dir = args.input
    output_dir = args.output
    quality = args.quality
    print(f"Optimizing images from {input_dir} to {output_dir} with quality {quality}")
    optimize_images(input_dir, output_dir, quality)


if __name__ == "__main__":
    main()
