package io.flutter.plugins.imagepicker;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.util.SizeFCompat;
import androidx.exifinterface.media.ExifInterface;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
class ImageResizer {
    private final Context context;
    private final ExifDataCopier exifDataCopier;

    public ImageResizer(@NonNull Context context, @NonNull ExifDataCopier exifDataCopier) {
        this.context = context;
        this.exifDataCopier = exifDataCopier;
    }

    private int calculateSampleSize(BitmapFactory.Options options, int i, int i2) {
        int i3 = options.outHeight;
        int i4 = options.outWidth;
        int i5 = 1;
        if (i3 <= i2 && i4 <= i) {
            return 1;
        }
        int i6 = i3 / 2;
        int i7 = i4 / 2;
        while (i6 / i5 >= i2 && i7 / i5 >= i) {
            i5 *= 2;
        }
        return i5;
    }

    private SizeFCompat calculateTargetSize(double d, double d2, @Nullable Double d3, @Nullable Double d4) {
        boolean z;
        boolean z2;
        double d5;
        double d6;
        boolean z3;
        double d7 = d / d2;
        boolean z4 = false;
        if (d3 != null) {
            z = true;
        } else {
            z = false;
        }
        if (d4 != null) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z) {
            d5 = Math.min(d, Math.round(d3.doubleValue()));
        } else {
            d5 = d;
        }
        if (z2) {
            d6 = Math.min(d2, Math.round(d4.doubleValue()));
        } else {
            d6 = d2;
        }
        if (z && d3.doubleValue() < d) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (z2 && d4.doubleValue() < d2) {
            z4 = true;
        }
        if (z3 || z4) {
            double d8 = d6 * d7;
            double d9 = d5 / d7;
            if (d9 > d6) {
                d5 = Math.round(d8);
            } else {
                d6 = Math.round(d9);
            }
        }
        return new SizeFCompat((float) d5, (float) d6);
    }

    private void copyExif(String str, String str2) {
        try {
            this.exifDataCopier.copyExif(new ExifInterface(str), new ExifInterface(str2));
        } catch (Exception e) {
            e.toString();
        }
    }

    private File createFile(File file, String str) {
        File file2 = new File(file, str);
        if (!file2.getParentFile().exists()) {
            file2.getParentFile().mkdirs();
        }
        return file2;
    }

    private File createImageOnExternalDirectory(String str, Bitmap bitmap, int i) throws IOException {
        Bitmap.CompressFormat compressFormat;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        if (bitmap.hasAlpha()) {
            compressFormat = Bitmap.CompressFormat.PNG;
        } else {
            compressFormat = Bitmap.CompressFormat.JPEG;
        }
        bitmap.compress(compressFormat, i, byteArrayOutputStream);
        File createFile = createFile(this.context.getCacheDir(), str);
        FileOutputStream createOutputStream = createOutputStream(createFile);
        createOutputStream.write(byteArrayOutputStream.toByteArray());
        createOutputStream.close();
        return createFile;
    }

    private FileOutputStream createOutputStream(File file) throws IOException {
        return new FileOutputStream(file);
    }

    private Bitmap createScaledBitmap(Bitmap bitmap, int i, int i2, boolean z) {
        return Bitmap.createScaledBitmap(bitmap, i, i2, z);
    }

    private Bitmap decodeFile(String str, @Nullable BitmapFactory.Options options) {
        return BitmapFactory.decodeFile(str, options);
    }

    private File resizedImage(Bitmap bitmap, Double d, Double d2, int i, String str) throws IOException {
        Bitmap createScaledBitmap = createScaledBitmap(bitmap, d.intValue(), d2.intValue(), false);
        return createImageOnExternalDirectory("/scaled_" + str, createScaledBitmap, i);
    }

    @VisibleForTesting
    public SizeFCompat readFileDimensions(String str) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        decodeFile(str, options);
        return new SizeFCompat(options.outWidth, options.outHeight);
    }

    public String resizeImageIfNeeded(String str, @Nullable Double d, @Nullable Double d2, int i) {
        SizeFCompat readFileDimensions = readFileDimensions(str);
        if (readFileDimensions.getWidth() != -1.0f && readFileDimensions.getHeight() != -1.0f) {
            if (d == null && d2 == null && i >= 100) {
                return str;
            }
            try {
                String[] split = str.split("/");
                String str2 = split[split.length - 1];
                SizeFCompat calculateTargetSize = calculateTargetSize(readFileDimensions.getWidth(), readFileDimensions.getHeight(), d, d2);
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inSampleSize = calculateSampleSize(options, (int) calculateTargetSize.getWidth(), (int) calculateTargetSize.getHeight());
                Bitmap decodeFile = decodeFile(str, options);
                if (decodeFile == null) {
                    return str;
                }
                File resizedImage = resizedImage(decodeFile, Double.valueOf(calculateTargetSize.getWidth()), Double.valueOf(calculateTargetSize.getHeight()), i, str2);
                copyExif(str, resizedImage.getPath());
                return resizedImage.getPath();
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
        return str;
    }
}
