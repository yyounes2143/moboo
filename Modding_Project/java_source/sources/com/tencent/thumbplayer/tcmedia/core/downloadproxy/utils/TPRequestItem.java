package com.tencent.thumbplayer.tcmedia.core.downloadproxy.utils;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class TPRequestItem {
    private int mRequestType;
    private String mUrl;
    private int mRequestTimes = 0;
    private long mRequestFailedTime = -1;

    public TPRequestItem(String str, int i) {
        this.mUrl = str;
        this.mRequestType = i;
    }

    public long getRequestFailedTime() {
        return this.mRequestFailedTime;
    }

    public int getRequestTimes() {
        return this.mRequestTimes;
    }

    public int getRequestType() {
        return this.mRequestType;
    }

    public String getUrl() {
        return this.mUrl;
    }

    public void updateFailedTime() {
        this.mRequestFailedTime = System.currentTimeMillis();
        this.mRequestTimes++;
    }
}
