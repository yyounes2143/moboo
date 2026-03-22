package com.fluttercandies.flutter_image_compress.exif;

import android.content.Context;
import androidx.exifinterface.media.ExifInterface;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.UUID;
import org.apache.commons.io.IOUtils;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class ExifKeeper {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final List<String> f7268Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Arrays.asList(ExifInterface.TAG_F_NUMBER, ExifInterface.TAG_EXPOSURE_TIME, ExifInterface.TAG_ISO_SPEED_RATINGS, ExifInterface.TAG_GPS_ALTITUDE, ExifInterface.TAG_GPS_ALTITUDE_REF, ExifInterface.TAG_FOCAL_LENGTH, ExifInterface.TAG_GPS_DATESTAMP, ExifInterface.TAG_WHITE_BALANCE, ExifInterface.TAG_GPS_PROCESSING_METHOD, ExifInterface.TAG_GPS_TIMESTAMP, ExifInterface.TAG_DATETIME, ExifInterface.TAG_FLASH, ExifInterface.TAG_GPS_LATITUDE, ExifInterface.TAG_GPS_LATITUDE_REF, ExifInterface.TAG_GPS_LONGITUDE, ExifInterface.TAG_GPS_LONGITUDE_REF, ExifInterface.TAG_MAKE, ExifInterface.TAG_MODEL);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ExifInterface f7269Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public ExifKeeper(String str) throws IOException {
        this.f7269Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ExifInterface(str);
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ExifInterface exifInterface, ExifInterface exifInterface2, String str) {
        if (exifInterface.getAttribute(str) != null) {
            exifInterface2.setAttribute(str, exifInterface.getAttribute(str));
        }
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ExifInterface exifInterface, ExifInterface exifInterface2) {
        for (String str : f7268Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(exifInterface, exifInterface2, str);
        }
        try {
            exifInterface2.saveAttributes();
        } catch (IOException unused) {
        }
    }

    public ByteArrayOutputStream Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, ByteArrayOutputStream byteArrayOutputStream) {
        FileInputStream fileInputStream;
        Exception e;
        FileOutputStream fileOutputStream;
        ByteArrayOutputStream byteArrayOutputStream2;
        try {
            String uuid = UUID.randomUUID().toString();
            File file = new File(context.getCacheDir(), uuid + ".jpg");
            fileOutputStream = new FileOutputStream(file);
            try {
                IOUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(byteArrayOutputStream.toByteArray(), fileOutputStream);
                fileOutputStream.close();
                ExifInterface exifInterface = new ExifInterface(file.getAbsolutePath());
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f7269Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, exifInterface);
                exifInterface.saveAttributes();
                fileOutputStream.close();
                byteArrayOutputStream2 = new ByteArrayOutputStream();
                fileInputStream = new FileInputStream(file);
            } catch (Exception e2) {
                fileInputStream = null;
                e = e2;
            }
        } catch (Exception e3) {
            fileInputStream = null;
            e = e3;
            fileOutputStream = null;
        }
        try {
            IOUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fileInputStream, byteArrayOutputStream2);
            fileInputStream.close();
            return byteArrayOutputStream2;
        } catch (Exception e4) {
            e = e4;
            e.toString();
            if (fileInputStream != null) {
                try {
                    fileInputStream.close();
                } catch (IOException e5) {
                    e5.printStackTrace();
                }
            }
            if (fileOutputStream != null) {
                try {
                    fileOutputStream.close();
                } catch (IOException e6) {
                    e6.printStackTrace();
                }
            }
            return byteArrayOutputStream;
        }
    }

    public ExifKeeper(byte[] bArr) throws IOException {
        this.f7269Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ExifInterface(new ByteArrayInputStream(bArr));
    }
}
