package com.tencent.thumbplayer.tcmedia.adapter.a;

import android.content.res.AssetFileDescriptor;
import android.os.ParcelFileDescriptor;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.tencent.thumbplayer.tcmedia.adapter.a.c;
import com.tencent.thumbplayer.tcmedia.api.TPCaptureCallBack;
import com.tencent.thumbplayer.tcmedia.api.TPCaptureParams;
import com.tencent.thumbplayer.tcmedia.api.TPCommonEnum;
import com.tencent.thumbplayer.tcmedia.api.TPOptionalParam;
import com.tencent.thumbplayer.tcmedia.api.TPProgramInfo;
import com.tencent.thumbplayer.tcmedia.api.TPTrackInfo;
import com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaAsset;
import com.tencent.thumbplayer.tcmedia.core.player.TPDynamicStatisticParams;
import com.tencent.thumbplayer.tcmedia.core.player.TPGeneralPlayFlowParams;
import java.util.List;
import java.util.Map;
/* loaded from: classes6.dex */
public interface b {
    void a(float f);

    void a(int i);

    void a(int i, @TPCommonEnum.TPSeekMode int i2);

    void a(int i, long j);

    void a(AssetFileDescriptor assetFileDescriptor);

    void a(ParcelFileDescriptor parcelFileDescriptor);

    void a(Surface surface);

    void a(SurfaceHolder surfaceHolder);

    void a(c.a aVar);

    void a(c.b bVar);

    void a(c.InterfaceC0220c interfaceC0220c);

    void a(c.d dVar);

    void a(c.e eVar);

    void a(c.f fVar);

    void a(c.g gVar);

    void a(c.h hVar);

    void a(c.i iVar);

    void a(c.j jVar);

    void a(c.l lVar);

    void a(c.m mVar);

    void a(c.n nVar);

    void a(c.o oVar);

    void a(c.p pVar);

    void a(TPCaptureParams tPCaptureParams, TPCaptureCallBack tPCaptureCallBack);

    void a(TPOptionalParam tPOptionalParam);

    void a(ITPMediaAsset iTPMediaAsset);

    void a(ITPMediaAsset iTPMediaAsset, @TPCommonEnum.TPSwitchDefMode int i, long j);

    void a(com.tencent.thumbplayer.tcmedia.e.b bVar);

    void a(String str);

    void a(String str, @TPCommonEnum.TPSwitchDefMode int i, long j);

    void a(String str, Map<String, String> map);

    void a(String str, Map<String, String> map, @TPCommonEnum.TPSwitchDefMode int i, long j);

    void a(String str, Map<String, String> map, String str2, String str3);

    void a(String str, Map<String, String> map, String str2, List<TPOptionalParam> list);

    void a(boolean z);

    void a(boolean z, long j, long j2);

    long b(int i);

    void b(float f);

    void b(int i, long j);

    void b(boolean z);

    TPDynamicStatisticParams c(boolean z);

    String c(int i);

    void c(int i, long j);

    void g();

    void h();

    void i();

    void j();

    void k();

    void l();

    void m();

    long n();

    long o();

    long p();

    int q();

    int r();

    TPTrackInfo[] s();

    TPProgramInfo[] t();

    long[] u();

    TPGeneralPlayFlowParams v();
}
