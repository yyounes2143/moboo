package com.tencent.thumbplayer.tcmedia.adapter.a.a;

import android.text.TextUtils;
import com.tencent.thumbplayer.tcmedia.adapter.a.a.a;
import com.tencent.thumbplayer.tcmedia.api.TPSubtitleRenderModel;
import com.tencent.thumbplayer.tcmedia.core.common.TPMediaTrackInfo;
import com.tencent.thumbplayer.tcmedia.core.common.TPSubtitleFrame;
import com.tencent.thumbplayer.tcmedia.core.subtitle.ITPSubtitleParserCallback;
import com.tencent.thumbplayer.tcmedia.core.subtitle.TPNativeSubtitleRenderParams;
import com.tencent.thumbplayer.tcmedia.core.subtitle.TPSubtitleParser;
import com.tencent.thumbplayer.tcmedia.utils.TPLogUtil;
import com.tencent.thumbplayer.tcmedia.utils.o;
import java.util.Map;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
/* loaded from: classes6.dex */
public class c implements com.tencent.thumbplayer.tcmedia.adapter.a.a.a {
    TPNativeSubtitleRenderParams b;
    private a.InterfaceC0217a c;
    private a.d d;
    private a.c e;
    private a.b f;
    private TPSubtitleParser g;
    private String h;

    /* renamed from: a  reason: collision with root package name */
    int f10490a = 0;
    private Future<?> i = null;
    private final Object j = new Object();
    private a k = a.IDLE;

    /* loaded from: classes6.dex */
    public enum a {
        IDLE,
        INITED,
        PREPARED,
        STOPED,
        ERROR
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.a.a
    public void e() {
        TPLogUtil.i("TPSysPlayerExternalSubtitle", "reset.");
        if (this.k != a.IDLE) {
            TPSubtitleParser tPSubtitleParser = this.g;
            if (tPSubtitleParser != null) {
                try {
                    tPSubtitleParser.stop();
                    this.g.unInit();
                } catch (Exception e) {
                    TPLogUtil.e("TPSysPlayerExternalSubtitle", e);
                }
            }
            this.g = null;
        }
        synchronized (this.j) {
            try {
                Future<?> future = this.i;
                if (future != null) {
                    future.cancel(true);
                    this.i = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.k = a.IDLE;
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.a.a
    public void f() {
        TPLogUtil.i("TPSysPlayerExternalSubtitle", "release.");
        this.d = null;
        this.c = null;
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.a.a
    public void a() {
        if (this.k != a.INITED) {
            TPLogUtil.e("TPSysPlayerExternalSubtitle", "prepare, illegalState, state:" + this.k);
            return;
        }
        TPLogUtil.i("TPSysPlayerExternalSubtitle", "prepare.");
        this.g.init();
        this.g.loadAsync();
        TPNativeSubtitleRenderParams tPNativeSubtitleRenderParams = this.b;
        if (tPNativeSubtitleRenderParams != null) {
            this.g.setRenderParams(tPNativeSubtitleRenderParams);
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.a.a
    public void b() {
        if (this.k == a.PREPARED) {
            TPLogUtil.i("TPSysPlayerExternalSubtitle", "startAsync");
            this.g.startAsync();
            return;
        }
        TPLogUtil.e("TPSysPlayerExternalSubtitle", "startAsync, illegalState, state:" + this.k);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.a.a
    public void c() {
        if (this.k == a.PREPARED) {
            TPLogUtil.i("TPSysPlayerExternalSubtitle", "pauseAsync");
            this.g.pauseAsync();
            return;
        }
        TPLogUtil.e("TPSysPlayerExternalSubtitle", "pauseAsync, illegalState, state:" + this.k);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.a.a
    public void d() {
        TPLogUtil.i("TPSysPlayerExternalSubtitle", "stop.");
        a aVar = this.k;
        if (aVar == a.INITED || aVar == a.PREPARED || aVar == a.ERROR) {
            TPSubtitleParser tPSubtitleParser = this.g;
            if (tPSubtitleParser != null) {
                try {
                    tPSubtitleParser.stop();
                    this.g.unInit();
                } catch (Exception e) {
                    TPLogUtil.e("TPSysPlayerExternalSubtitle", e);
                }
            }
            this.g = null;
        }
        if (this.f10490a == 0) {
            synchronized (this.j) {
                try {
                    Future<?> future = this.i;
                    if (future != null) {
                        future.cancel(true);
                        this.i = null;
                    }
                } finally {
                }
            }
        }
        this.k = a.STOPED;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int i) {
        a.d dVar = this.d;
        a.InterfaceC0217a interfaceC0217a = this.c;
        if (dVar == null || interfaceC0217a == null) {
            TPLogUtil.w("TPSysPlayerExternalSubtitle", "subPollFunc, posLis:" + dVar + ", subLis:" + interfaceC0217a);
            return;
        }
        long a2 = dVar.a();
        if (a2 < 0) {
            TPLogUtil.w("TPSysPlayerExternalSubtitle", "subPollFunc, cur position:".concat(String.valueOf(a2)));
            return;
        }
        String subtitleText = this.g.getSubtitleText(a2, i);
        if (TextUtils.equals(this.h, subtitleText)) {
            return;
        }
        this.h = subtitleText;
        interfaceC0217a.a(new a.e(subtitleText));
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.a.a
    public void a(int i) {
        this.f10490a = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(long j) {
        if (this.k != a.INITED) {
            TPLogUtil.e("TPSysPlayerExternalSubtitle", "prepare, illegalState, state:" + this.k);
            return;
        }
        TPMediaTrackInfo[] trackInfo = this.g.getTrackInfo();
        if (trackInfo == null || trackInfo.length <= 0) {
            TPLogUtil.w("TPSysPlayerExternalSubtitle", "prepare, err, trackInfos is empty.");
            this.k = a.ERROR;
        } else if (trackInfo[0].trackType != 3) {
            this.k = a.ERROR;
            TPLogUtil.w("TPSysPlayerExternalSubtitle", "prepare, err, track type not match.");
        } else {
            this.g.selectTrackAsync(0, j);
            this.k = a.PREPARED;
            if (this.f10490a == 0) {
                synchronized (this.j) {
                    try {
                        Future<?> future = this.i;
                        if (future != null) {
                            future.cancel(true);
                            this.i = null;
                        }
                        this.i = o.a().e().scheduleAtFixedRate(new Runnable() { // from class: com.tencent.thumbplayer.tcmedia.adapter.a.a.c.2
                            @Override // java.lang.Runnable
                            public void run() {
                                c.this.b(0);
                            }
                        }, 0L, 200L, TimeUnit.MILLISECONDS);
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.a.a
    public void a(a.InterfaceC0217a interfaceC0217a) {
        this.c = interfaceC0217a;
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.a.a
    public void a(a.b bVar) {
        this.f = bVar;
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.a.a
    public void a(a.c cVar) {
        this.e = cVar;
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.a.a
    public void a(a.d dVar) {
        this.d = dVar;
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.a.a
    public void a(TPSubtitleRenderModel tPSubtitleRenderModel) {
        TPNativeSubtitleRenderParams a2 = com.tencent.thumbplayer.tcmedia.adapter.a.b.c.a(tPSubtitleRenderModel);
        this.b = a2;
        TPSubtitleParser tPSubtitleParser = this.g;
        if (tPSubtitleParser != null) {
            tPSubtitleParser.setRenderParams(a2);
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.a.a.a
    public void a(String str, Map<String, String> map, final long j) {
        if (this.k != a.IDLE) {
            TPLogUtil.e("TPSysPlayerExternalSubtitle", "setDataSource, illegalState, state:" + this.k);
        } else if (TextUtils.isEmpty(str)) {
            TPLogUtil.e("TPSysPlayerExternalSubtitle", "setDataSource, illegal argument, url:".concat(String.valueOf(str)));
        } else {
            TPLogUtil.i("TPSysPlayerExternalSubtitle", "setDataSource, url: ".concat(String.valueOf(str)));
            if (this.g != null) {
                TPLogUtil.w("TPSysPlayerExternalSubtitle", "setDataSource, mTpSubParser != null.");
                try {
                    this.g.stop();
                    this.g.unInit();
                } catch (Exception e) {
                    e.printStackTrace();
                }
                this.g = null;
            }
            this.g = new TPSubtitleParser(str, map, new ITPSubtitleParserCallback() { // from class: com.tencent.thumbplayer.tcmedia.adapter.a.a.c.1
                @Override // com.tencent.thumbplayer.tcmedia.core.subtitle.ITPSubtitleParserCallback
                public long onGetCurrentPlayPositionMs() {
                    if (c.this.d != null) {
                        return c.this.d.a();
                    }
                    return 0L;
                }

                @Override // com.tencent.thumbplayer.tcmedia.core.subtitle.ITPSubtitleParserCallback
                public void onLoadResult(int i) {
                    TPLogUtil.i("TPSysPlayerExternalSubtitle", "onLoadResult, index:".concat(String.valueOf(i)));
                    c.this.a(j);
                }

                @Override // com.tencent.thumbplayer.tcmedia.core.subtitle.ITPSubtitleParserCallback
                public void onSelectResult(int i, long j2) {
                    TPLogUtil.i("TPSysPlayerExternalSubtitle", "onSelectResult, errCode:" + i + ", selectOpaque:" + j2 + ", opaque =" + j);
                    if (i == 0 && c.this.e != null) {
                        c.this.e.a(j);
                    } else if (i != 0 && c.this.e != null) {
                        c.this.e.a(i, j);
                    }
                }

                @Override // com.tencent.thumbplayer.tcmedia.core.subtitle.ITPSubtitleParserCallback
                public void onSubtitleError(int i, int i2) {
                    TPLogUtil.i("TPSysPlayerExternalSubtitle", "onSubtitleError, index:" + i + ", errorCode:" + i2);
                    c.this.f.a(i, i2);
                }

                @Override // com.tencent.thumbplayer.tcmedia.core.subtitle.ITPSubtitleParserCallback
                public void onSubtitleFrame(TPSubtitleFrame tPSubtitleFrame) {
                    TPLogUtil.i("TPSysPlayerExternalSubtitle", "onSubtitleFrame");
                    if (c.this.c != null) {
                        c.this.c.a(tPSubtitleFrame);
                    }
                }

                @Override // com.tencent.thumbplayer.tcmedia.core.subtitle.ITPSubtitleParserCallback
                public void onSubtitleNote(String str2) {
                    TPLogUtil.i("TPSysPlayerExternalSubtitle", "onSubtitleNote");
                    if (c.this.c != null) {
                        c.this.c.a(str2);
                    }
                }
            }, this.f10490a);
            this.k = a.INITED;
        }
    }
}
