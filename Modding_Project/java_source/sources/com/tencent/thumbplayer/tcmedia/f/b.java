package com.tencent.thumbplayer.tcmedia.f;

import android.content.Context;
import com.tencent.thumbplayer.tcmedia.api.richmedia.ITPRichMediaSynchronizerListener;
import com.tencent.thumbplayer.tcmedia.api.richmedia.TPRichMediaFeature;
import com.tencent.thumbplayer.tcmedia.api.richmedia.TPRichMediaFeatureData;
import com.tencent.thumbplayer.tcmedia.api.richmedia.TPRichMediaRequestExtraInfo;
import com.tencent.thumbplayer.tcmedia.core.richmedia.ITPNativeRichMediaInnerProcessorCallback;
import com.tencent.thumbplayer.tcmedia.core.richmedia.ITPNativeRichMediaProcessor;
import com.tencent.thumbplayer.tcmedia.core.richmedia.ITPNativeRichMediaProcessorCallback;
import com.tencent.thumbplayer.tcmedia.core.richmedia.TPNativeRichMediaFeature;
import com.tencent.thumbplayer.tcmedia.core.richmedia.TPNativeRichMediaFeatureData;
import com.tencent.thumbplayer.tcmedia.core.richmedia.TPNativeRichMediaProcessor;
import com.tencent.thumbplayer.tcmedia.core.richmedia.TPNativeRichMediaRequestExtraInfo;
import com.tencent.thumbplayer.tcmedia.f.a;
import com.tencent.thumbplayer.tcmedia.tplayer.plugins.c;
/* loaded from: classes6.dex */
public class b implements com.tencent.thumbplayer.tcmedia.f.a {

    /* renamed from: a  reason: collision with root package name */
    private ITPNativeRichMediaProcessor f10608a;
    private a b;
    private C0229b c;
    private c d;

    /* loaded from: classes6.dex */
    public class a implements ITPNativeRichMediaInnerProcessorCallback {
        private a.InterfaceC0226a b;

        public a() {
        }

        public void a(a.InterfaceC0226a interfaceC0226a) {
            this.b = interfaceC0226a;
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.richmedia.ITPNativeRichMediaInnerProcessorCallback
        public long onGetCurrentPositionMs(ITPNativeRichMediaProcessor iTPNativeRichMediaProcessor) {
            a.InterfaceC0226a interfaceC0226a = this.b;
            if (interfaceC0226a != null) {
                long a2 = interfaceC0226a.a(b.this);
                b.this.a(311, (int) a2, 0, null, null);
                return a2;
            }
            return -1L;
        }
    }

    /* renamed from: com.tencent.thumbplayer.tcmedia.f.b$b  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public class C0229b implements ITPNativeRichMediaProcessorCallback {
        private ITPRichMediaSynchronizerListener b;

        public C0229b() {
        }

        public void a(ITPRichMediaSynchronizerListener iTPRichMediaSynchronizerListener) {
            this.b = iTPRichMediaSynchronizerListener;
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.richmedia.ITPNativeRichMediaProcessorCallback
        public void onDeselectFeatureSuccess(ITPNativeRichMediaProcessor iTPNativeRichMediaProcessor, int i) {
            b.this.a(305, i, 0, null, null);
            ITPRichMediaSynchronizerListener iTPRichMediaSynchronizerListener = this.b;
            if (iTPRichMediaSynchronizerListener != null) {
                iTPRichMediaSynchronizerListener.onDeselectFeatureSuccess(b.this, i);
            }
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.richmedia.ITPNativeRichMediaProcessorCallback
        public void onRichMediaError(ITPNativeRichMediaProcessor iTPNativeRichMediaProcessor, int i) {
            b.this.a(308, i, 0, null, null);
            ITPRichMediaSynchronizerListener iTPRichMediaSynchronizerListener = this.b;
            if (iTPRichMediaSynchronizerListener != null) {
                iTPRichMediaSynchronizerListener.onRichMediaError(b.this, i);
            }
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.richmedia.ITPNativeRichMediaProcessorCallback
        public void onRichMediaFeatureData(ITPNativeRichMediaProcessor iTPNativeRichMediaProcessor, int i, TPNativeRichMediaFeatureData tPNativeRichMediaFeatureData) {
            ITPRichMediaSynchronizerListener iTPRichMediaSynchronizerListener = this.b;
            if (iTPRichMediaSynchronizerListener != null) {
                iTPRichMediaSynchronizerListener.onRichMediaFeatureData(b.this, i, new TPRichMediaFeatureData(tPNativeRichMediaFeatureData));
            }
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.richmedia.ITPNativeRichMediaProcessorCallback
        public void onRichMediaFeatureFailure(ITPNativeRichMediaProcessor iTPNativeRichMediaProcessor, int i, int i2) {
            b.this.a(310, i, i2, null, null);
            ITPRichMediaSynchronizerListener iTPRichMediaSynchronizerListener = this.b;
            if (iTPRichMediaSynchronizerListener != null) {
                iTPRichMediaSynchronizerListener.onRichMediaFeatureFailure(b.this, i, i2);
            }
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.richmedia.ITPNativeRichMediaProcessorCallback
        public void onRichMediaInfo(ITPNativeRichMediaProcessor iTPNativeRichMediaProcessor, int i, long j, long j2, long j3, Object obj) {
            ITPRichMediaSynchronizerListener iTPRichMediaSynchronizerListener = this.b;
            if (iTPRichMediaSynchronizerListener != null) {
                iTPRichMediaSynchronizerListener.onRichMediaInfo(b.this, i, j, j2, j3, obj);
            }
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.richmedia.ITPNativeRichMediaProcessorCallback
        public void onRichMediaPrepared(ITPNativeRichMediaProcessor iTPNativeRichMediaProcessor) {
            b.this.a(301, 0, 0, null, b.this.getFeatures());
            ITPRichMediaSynchronizerListener iTPRichMediaSynchronizerListener = this.b;
            if (iTPRichMediaSynchronizerListener != null) {
                iTPRichMediaSynchronizerListener.onRichMediaPrepared(b.this);
            }
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.richmedia.ITPNativeRichMediaProcessorCallback
        public void onSelectFeatureSuccess(ITPNativeRichMediaProcessor iTPNativeRichMediaProcessor, int i) {
            b.this.a(303, i, 0, null, null);
            ITPRichMediaSynchronizerListener iTPRichMediaSynchronizerListener = this.b;
            if (iTPRichMediaSynchronizerListener != null) {
                iTPRichMediaSynchronizerListener.onSelectFeatureSuccess(b.this, i);
            }
        }
    }

    public b(Context context) {
        this.f10608a = new TPNativeRichMediaProcessor(context);
        a aVar = new a();
        this.b = aVar;
        this.f10608a.setInnerProcessorCallback(aVar);
        C0229b c0229b = new C0229b();
        this.c = c0229b;
        this.f10608a.setProcessorCallback(c0229b);
        c cVar = new c();
        this.d = cVar;
        cVar.a(new com.tencent.thumbplayer.tcmedia.f.b.a());
    }

    @Override // com.tencent.thumbplayer.tcmedia.f.a
    public void a(float f) {
        this.f10608a.setPlaybackRate(f);
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.richmedia.ITPRichMediaSynchronizer
    public void deselectFeatureAsync(int i) {
        this.f10608a.deselectFeatureAsync(i);
        a(304, i, 0, null, null);
    }

    public void finalize() {
        this.f10608a.setInnerProcessorCallback(null);
        this.f10608a.setProcessorCallback(null);
        this.f10608a.release();
        this.c.a(null);
        this.b.a(null);
        super.finalize();
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.richmedia.ITPRichMediaSynchronizer
    public TPRichMediaFeature[] getFeatures() {
        TPNativeRichMediaFeature tPNativeRichMediaFeature;
        TPNativeRichMediaFeature[] features = this.f10608a.getFeatures();
        if (features == null) {
            return new TPRichMediaFeature[0];
        }
        TPRichMediaFeature[] tPRichMediaFeatureArr = new TPRichMediaFeature[features.length];
        for (int i = 0; i < features.length && (tPNativeRichMediaFeature = features[i]) != null; i++) {
            tPRichMediaFeatureArr[i] = new TPRichMediaFeature(tPNativeRichMediaFeature);
        }
        return tPRichMediaFeatureArr;
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.richmedia.ITPRichMediaSynchronizer
    public void prepareAsync() {
        this.f10608a.prepareAsync();
        a(300, 0, 0, null, null);
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.richmedia.ITPRichMediaSynchronizer
    public void release() {
        this.f10608a.setInnerProcessorCallback(null);
        this.f10608a.setProcessorCallback(null);
        this.f10608a.release();
        this.c.a(null);
        this.b.a(null);
        a(307, 0, 0, null, null);
        this.d.c();
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.richmedia.ITPRichMediaSynchronizer
    public void reset() {
        this.f10608a.reset();
        a(306, 0, 0, null, null);
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.richmedia.ITPRichMediaSynchronizer
    public void selectFeatureAsync(int i, TPRichMediaRequestExtraInfo tPRichMediaRequestExtraInfo) {
        TPNativeRichMediaRequestExtraInfo tPNativeRichMediaRequestExtraInfo = new TPNativeRichMediaRequestExtraInfo();
        tPNativeRichMediaRequestExtraInfo.setActOnOptional(tPRichMediaRequestExtraInfo.getActOnOption());
        this.f10608a.selectFeatureAsync(i, tPNativeRichMediaRequestExtraInfo);
        a(302, i, 0, null, null);
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.richmedia.ITPRichMediaSynchronizer
    public void setListener(ITPRichMediaSynchronizerListener iTPRichMediaSynchronizerListener) {
        this.c.a(iTPRichMediaSynchronizerListener);
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.richmedia.ITPRichMediaSynchronizer
    public void setRichMediaSource(String str) {
        this.f10608a.setRichMediaSource(str);
        a(309, 0, 0, str, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, int i2, int i3, String str, Object obj) {
        this.d.a(i, i2, i3, str, obj);
    }

    @Override // com.tencent.thumbplayer.tcmedia.f.a
    public void a(long j) {
        this.f10608a.seek(j);
    }

    @Override // com.tencent.thumbplayer.tcmedia.f.a
    public void a(a.InterfaceC0226a interfaceC0226a) {
        this.b.a(interfaceC0226a);
    }
}
