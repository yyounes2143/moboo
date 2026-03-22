package com.changdu.component.webviewcache.config;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public interface MimeTypeFilter {
    void addMimeType(String str);

    void clear();

    boolean isFilter(String str);

    void removeMimeType(String str);
}
