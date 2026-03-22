package com.mbridge.msdk.mbsignalcommon.windvane;

import androidx.media3.common.MimeTypes;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public enum d {
    JS("js", "application/x-javascript"),
    CSS("css", "text/css"),
    JPG("jpg", MimeTypes.IMAGE_JPEG),
    JPEG("jpep", MimeTypes.IMAGE_JPEG),
    PNG("png", MimeTypes.IMAGE_PNG),
    WEBP("webp", MimeTypes.IMAGE_WEBP),
    GIF("gif", "image/gif"),
    HTM("htm", "text/html"),
    HTML("html", "text/html");
    

    /* renamed from: a  reason: collision with root package name */
    private String f9303a;
    private String b;

    d(String str, String str2) {
        this.f9303a = str;
        this.b = str2;
    }

    public String b() {
        return this.b;
    }

    public String c() {
        return this.f9303a;
    }
}
