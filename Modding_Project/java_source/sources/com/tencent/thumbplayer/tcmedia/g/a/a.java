package com.tencent.thumbplayer.tcmedia.g.a;
/* loaded from: classes6.dex */
public interface a {
    void onCreate(Boolean bool);

    void onRealRelease();

    void onReuseCodecAPIException(String str, Throwable th);

    void onStarted(Boolean bool, String str);

    void onTransToKeepPool();

    void onTransToRunningPool();
}
