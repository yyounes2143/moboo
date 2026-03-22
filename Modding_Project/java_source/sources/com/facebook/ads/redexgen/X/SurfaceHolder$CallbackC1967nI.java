package com.facebook.ads.redexgen.X;

import android.graphics.SurfaceTexture;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.TextureView;
import com.facebook.ads.androidx.media3.common.Metadata;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;
/* renamed from: com.facebook.ads.redexgen.X.nI  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class SurfaceHolder$CallbackC1967nI implements InterfaceC0647Fo, C8D, InterfaceC0597Dq, B3, SurfaceHolder.Callback, TextureView.SurfaceTextureListener {
    public static String[] A01 = {"mdkndyL3N", "34XFwDl9WvKoMHQUixXhMeiNQCyC6vNP", "5uafIaN5", "lxzaK8fg5Pf0nzPouXyzPKk1aT8cB3T1", "DTIJ", "0UAV", "B5vkeIjqEzHsmqRbylQSobdgrKqNmXUo", "pkzfV8UoB1KOSL3E8gfET47OMeTC19My"};
    public final /* synthetic */ C9V A00;

    @Override // com.facebook.ads.redexgen.X.C8D
    public final /* synthetic */ void ACT(C2061or c2061or, C03975j c03975j) {
    }

    @Override // com.facebook.ads.redexgen.X.C8D
    public final /* synthetic */ void ACU(long j) {
    }

    @Override // com.facebook.ads.redexgen.X.C8D
    public final /* synthetic */ void ACV(Exception exc) {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0647Fo
    public final /* synthetic */ void ACr(int i, long j) {
    }

    @Override // com.facebook.ads.redexgen.X.C8D
    public final /* synthetic */ void AFF(boolean z) {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0647Fo
    public final /* synthetic */ void AFl(C2061or c2061or, C03975j c03975j) {
    }

    public SurfaceHolder$CallbackC1967nI(C9V c9v) {
        this.A00 = c9v;
    }

    @Override // com.facebook.ads.redexgen.X.C8D
    public final void ACP(String str, long j, long j2) {
        CopyOnWriteArraySet copyOnWriteArraySet;
        copyOnWriteArraySet = this.A00.A0H;
        Iterator it = copyOnWriteArraySet.iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            if (A01[1].charAt(3) != 'F') {
                throw new RuntimeException();
            }
            A01[3] = "1hpUDXdDopjYnxDN8fIPsNGSxN8OzRvU";
            if (hasNext) {
                ((C8D) it.next()).ACP(str, j, j2);
            } else {
                return;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.C8D
    public final void ACQ(C03945g c03945g) {
        CopyOnWriteArraySet copyOnWriteArraySet;
        copyOnWriteArraySet = this.A00.A0H;
        Iterator it = copyOnWriteArraySet.iterator();
        while (it.hasNext()) {
            ((C8D) it.next()).ACQ(c03945g);
        }
        this.A00.A07 = null;
        this.A00.A09 = null;
        this.A00.A01 = 0;
    }

    @Override // com.facebook.ads.redexgen.X.C8D
    public final void ACR(C03945g c03945g) {
        CopyOnWriteArraySet copyOnWriteArraySet;
        this.A00.A09 = c03945g;
        copyOnWriteArraySet = this.A00.A0H;
        Iterator it = copyOnWriteArraySet.iterator();
        while (it.hasNext()) {
            ((C8D) it.next()).ACR(c03945g);
        }
    }

    @Override // com.facebook.ads.redexgen.X.C8D
    public final void ACS(C2061or c2061or) {
        CopyOnWriteArraySet copyOnWriteArraySet;
        this.A00.A07 = c2061or;
        copyOnWriteArraySet = this.A00.A0H;
        Iterator it = copyOnWriteArraySet.iterator();
        while (it.hasNext()) {
            ((C8D) it.next()).ACS(c2061or);
        }
    }

    @Override // com.facebook.ads.redexgen.X.C8D
    public final void ACY(int i, long j, long j2) {
        CopyOnWriteArraySet copyOnWriteArraySet;
        copyOnWriteArraySet = this.A00.A0H;
        Iterator it = copyOnWriteArraySet.iterator();
        while (it.hasNext()) {
            ((C8D) it.next()).ACY(i, j, j2);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0597Dq
    @MetaExoPlayerCustomization(type = {"TEMPORARY"}, value = "Required until we deprecate and move ComponentListener to ExoPlayerImpl.")
    public final void ACv(C2010o0 c2010o0) {
        CopyOnWriteArraySet copyOnWriteArraySet;
        copyOnWriteArraySet = this.A00.A0I;
        Iterator it = copyOnWriteArraySet.iterator();
        while (it.hasNext()) {
            ((InterfaceC03282s) it.next()).ACv(c2010o0);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0597Dq
    @MetaExoPlayerCustomization(type = {"TEMPORARY"}, value = "Required until we deprecate and move ComponentListener to ExoPlayerImpl.")
    public final void ACw(List<C2012o2> list) {
        CopyOnWriteArraySet copyOnWriteArraySet;
        copyOnWriteArraySet = this.A00.A0I;
        Iterator it = copyOnWriteArraySet.iterator();
        while (it.hasNext()) {
            ((InterfaceC03282s) it.next()).ACw(list);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0647Fo
    public final void AD7(int i, long j) {
        CopyOnWriteArraySet copyOnWriteArraySet;
        copyOnWriteArraySet = this.A00.A0K;
        Iterator it = copyOnWriteArraySet.iterator();
        while (it.hasNext()) {
            ((InterfaceC0647Fo) it.next()).AD7(i, j);
        }
    }

    @Override // com.facebook.ads.redexgen.X.B3
    public final void AEE(Metadata metadata, long j) {
        CopyOnWriteArraySet copyOnWriteArraySet;
        copyOnWriteArraySet = this.A00.A0J;
        Iterator it = copyOnWriteArraySet.iterator();
        while (it.hasNext()) {
            ((B3) it.next()).AEE(metadata, j);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0647Fo
    public final void AEx(Object obj, long j) {
        Surface surface;
        CopyOnWriteArraySet copyOnWriteArraySet;
        CopyOnWriteArraySet copyOnWriteArraySet2;
        surface = this.A00.A03;
        if (surface == obj) {
            copyOnWriteArraySet2 = this.A00.A0L;
            Iterator it = copyOnWriteArraySet2.iterator();
            while (it.hasNext()) {
                it.next();
            }
        }
        copyOnWriteArraySet = this.A00.A0K;
        Iterator it2 = copyOnWriteArraySet.iterator();
        while (it2.hasNext()) {
            ((InterfaceC0647Fo) it2.next()).AEx(obj, j);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0647Fo
    public final void AFd(String str, long j, long j2) {
        CopyOnWriteArraySet copyOnWriteArraySet;
        copyOnWriteArraySet = this.A00.A0K;
        Iterator it = copyOnWriteArraySet.iterator();
        while (it.hasNext()) {
            ((InterfaceC0647Fo) it.next()).AFd(str, j, j2);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0647Fo
    public final void AFe(C03945g c03945g) {
        CopyOnWriteArraySet copyOnWriteArraySet;
        copyOnWriteArraySet = this.A00.A0K;
        Iterator it = copyOnWriteArraySet.iterator();
        while (it.hasNext()) {
            ((InterfaceC0647Fo) it.next()).AFe(c03945g);
        }
        this.A00.A08 = null;
        this.A00.A0A = null;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0647Fo
    public final void AFf(C03945g c03945g) {
        CopyOnWriteArraySet copyOnWriteArraySet;
        this.A00.A0A = c03945g;
        copyOnWriteArraySet = this.A00.A0K;
        Iterator it = copyOnWriteArraySet.iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            if (A01[0].length() != 9) {
                throw new RuntimeException();
            }
            String[] strArr = A01;
            strArr[7] = "MKCckBbCZrSSu6G06Z7NkbaNocq2WvpN";
            strArr[6] = "V8qjKHPFdvtphjyj0wrcUTYdTARdRgua";
            if (hasNext) {
                ((InterfaceC0647Fo) it.next()).AFf(c03945g);
            } else {
                return;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0647Fo
    public final void AFk(C2061or c2061or) {
        CopyOnWriteArraySet copyOnWriteArraySet;
        this.A00.A08 = c2061or;
        copyOnWriteArraySet = this.A00.A0K;
        Iterator it = copyOnWriteArraySet.iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            if (A01[1].charAt(3) != 'F') {
                throw new RuntimeException();
            }
            A01[3] = "2z1T7IcDfmpzuxqypnwVKmOXmU8bKGPo";
            if (hasNext) {
                ((InterfaceC0647Fo) it.next()).AFk(c2061or);
            } else {
                return;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0647Fo
    public final void AFr(C2014o4 c2014o4) {
        CopyOnWriteArraySet copyOnWriteArraySet;
        CopyOnWriteArraySet copyOnWriteArraySet2;
        copyOnWriteArraySet = this.A00.A0L;
        Iterator it = copyOnWriteArraySet.iterator();
        while (it.hasNext()) {
            ((InterfaceC03714j) it.next()).AFq(c2014o4.A03, c2014o4.A01, c2014o4.A02, c2014o4.A00);
        }
        copyOnWriteArraySet2 = this.A00.A0K;
        Iterator it2 = copyOnWriteArraySet2.iterator();
        while (it2.hasNext()) {
            InterfaceC0647Fo interfaceC0647Fo = (InterfaceC0647Fo) it2.next();
            String[] strArr = A01;
            if (strArr[4].length() != strArr[5].length()) {
                throw new RuntimeException();
            }
            A01[1] = "q7eFcMKXm9CoB0iVpo1HKrbod3G9GfaY";
            interfaceC0647Fo.AFr(c2014o4);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        this.A00.A0F(new Surface(surfaceTexture), true);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        this.A00.A0F(null, true);
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceCreated(SurfaceHolder surfaceHolder) {
        this.A00.A0F(surfaceHolder.getSurface(), false);
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        this.A00.A0F(null, false);
    }
}
