package com.tencent.thumbplayer.tcmedia.c;

import com.tencent.thumbplayer.tcmedia.api.TPOptionalParam;
import com.tencent.thumbplayer.tcmedia.api.TPVideoInfo;
import com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaAsset;
import com.tencent.thumbplayer.tcmedia.api.proxy.ITPPlayerProxy;
import com.tencent.thumbplayer.tcmedia.api.proxy.ITPPlayerProxyListener;
import com.tencent.thumbplayer.tcmedia.api.proxy.TPDownloadParamData;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPlayListener;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDLProxyMsg;
import java.util.Map;
/* loaded from: classes6.dex */
public interface a extends ITPPlayerProxy {
    com.tencent.thumbplayer.tcmedia.adapter.a.e a(long j, String str, TPVideoInfo tPVideoInfo, Map<String, String> map);

    com.tencent.thumbplayer.tcmedia.adapter.a.e a(String str, Map<String, String> map);

    ITPMediaAsset a(ITPMediaAsset iTPMediaAsset);

    ITPMediaAsset a(ITPMediaAsset iTPMediaAsset, long j, TPVideoInfo tPVideoInfo);

    String a(int i, String str, TPDownloadParamData tPDownloadParamData);

    void a(float f);

    void a(int i);

    void a(long j);

    void a(long j, long j2);

    void a(TPOptionalParam tPOptionalParam);

    void a(TPVideoInfo tPVideoInfo);

    void a(ITPPlayListener iTPPlayListener);

    void a(String str, Object obj);

    void a(String str, String str2);

    void a(boolean z);

    boolean a();

    byte[] a(String str, String str2, String str3);

    void b();

    boolean c();

    void d();

    void e();

    boolean f();

    String g();

    void h();

    void i();

    ITPPlayerProxyListener j();

    TPDLProxyMsg.TPPDTInfo[] k();
}
