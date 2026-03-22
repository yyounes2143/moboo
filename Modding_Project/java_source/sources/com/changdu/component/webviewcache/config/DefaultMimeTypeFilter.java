package com.changdu.component.webviewcache.config;

import androidx.media3.common.MimeTypes;
import java.util.HashSet;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class DefaultMimeTypeFilter implements MimeTypeFilter {

    /* renamed from: a  reason: collision with root package name */
    public final HashSet f5391a = new HashSet();

    public DefaultMimeTypeFilter() {
        addMimeType("application/javascript");
        addMimeType("application/ecmascript");
        addMimeType("application/x-ecmascript");
        addMimeType("application/x-javascript");
        addMimeType("text/ecmascript");
        addMimeType("text/javascript");
        addMimeType("text/javascript1.0");
        addMimeType("text/javascript1.1");
        addMimeType("text/javascript1.2");
        addMimeType("text/javascript1.3");
        addMimeType("text/javascript1.4");
        addMimeType("text/javascript1.5");
        addMimeType("text/jscript");
        addMimeType("text/livescript");
        addMimeType("text/x-ecmascript");
        addMimeType("text/x-javascript");
        addMimeType("image/gif");
        addMimeType(MimeTypes.IMAGE_JPEG);
        addMimeType(MimeTypes.IMAGE_PNG);
        addMimeType("image/svg+xml");
        addMimeType(MimeTypes.IMAGE_BMP);
        addMimeType(MimeTypes.IMAGE_WEBP);
        addMimeType("image/tiff");
        addMimeType("image/vnd.microsoft.icon");
        addMimeType("image/x-icon");
        addMimeType("text/css");
        addMimeType("application/octet-stream");
        addMimeType("audio/mpeg");
        addMimeType("video/mp4");
    }

    @Override // com.changdu.component.webviewcache.config.MimeTypeFilter
    public void addMimeType(String str) {
        this.f5391a.add(str);
    }

    @Override // com.changdu.component.webviewcache.config.MimeTypeFilter
    public void clear() {
        this.f5391a.clear();
    }

    @Override // com.changdu.component.webviewcache.config.MimeTypeFilter
    public boolean isFilter(String str) {
        return !this.f5391a.contains(str);
    }

    @Override // com.changdu.component.webviewcache.config.MimeTypeFilter
    public void removeMimeType(String str) {
        this.f5391a.remove(str);
    }
}
