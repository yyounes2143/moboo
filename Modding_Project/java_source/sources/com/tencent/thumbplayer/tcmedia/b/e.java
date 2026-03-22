package com.tencent.thumbplayer.tcmedia.b;

import com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaComposition;
import com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaTrack;
import com.tencent.thumbplayer.tcmedia.utils.TPLogUtil;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes6.dex */
public class e extends d implements ITPMediaComposition {

    /* renamed from: a  reason: collision with root package name */
    private int f10551a = 0;
    private int b = 0;
    private int c = 0;
    private List<ITPMediaTrack> d = new ArrayList(1);
    private List<ITPMediaTrack> e = new ArrayList(1);
    private List<ITPMediaTrack> f = new ArrayList(1);

    private synchronized int d() {
        int i;
        i = this.f10551a + 1;
        this.f10551a = i;
        return i;
    }

    private synchronized int e() {
        int i;
        i = this.b + 1;
        this.b = i;
        return i;
    }

    private synchronized int f() {
        int i;
        i = this.c + 1;
        this.c = i;
        return i;
    }

    public long a() {
        List<ITPMediaTrack> list = this.d;
        long j = 0;
        if (list != null) {
            for (ITPMediaTrack iTPMediaTrack : list) {
                if (j < iTPMediaTrack.getTimelineDurationMs()) {
                    j = iTPMediaTrack.getTimelineDurationMs();
                }
            }
        }
        return j;
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaComposition
    public synchronized ITPMediaTrack addAVTrack() {
        g gVar;
        gVar = new g(f(), 1);
        this.f.add(gVar);
        return gVar;
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaComposition
    public synchronized ITPMediaTrack addAudioTrack() {
        g gVar;
        gVar = new g(e(), 3);
        this.e.add(gVar);
        return gVar;
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaComposition
    public synchronized ITPMediaTrack addVideoTrack() {
        g gVar;
        gVar = new g(d(), 2);
        this.d.add(gVar);
        return gVar;
    }

    public long b() {
        List<ITPMediaTrack> list = this.e;
        long j = 0;
        if (list != null) {
            for (ITPMediaTrack iTPMediaTrack : list) {
                if (j < iTPMediaTrack.getTimelineDurationMs()) {
                    j = iTPMediaTrack.getTimelineDurationMs();
                }
            }
        }
        return j;
    }

    public long c() {
        List<ITPMediaTrack> list = this.f;
        long j = 0;
        if (list != null) {
            for (ITPMediaTrack iTPMediaTrack : list) {
                if (j < iTPMediaTrack.getTimelineDurationMs()) {
                    j = iTPMediaTrack.getTimelineDurationMs();
                }
            }
        }
        return j;
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaComposition
    public List<ITPMediaTrack> getAllAVTracks() {
        return this.f;
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaComposition
    public synchronized List<ITPMediaTrack> getAllAudioTracks() {
        return this.e;
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaComposition
    public synchronized List<ITPMediaTrack> getAllVideoTracks() {
        return this.d;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0050 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0051 A[RETURN] */
    @Override // com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaComposition
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long getDurationMs() {
        /*
            r10 = this;
            java.util.List<com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaTrack> r0 = r10.f
            boolean r0 = com.tencent.thumbplayer.tcmedia.utils.b.a(r0)
            if (r0 != 0) goto Ld
            long r0 = r10.c()
            return r0
        Ld:
            long r0 = r10.b()
            long r2 = r10.a()
            int r4 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1))
            if (r4 <= 0) goto L1b
            r5 = r2
            goto L1c
        L1b:
            r5 = r0
        L1c:
            java.lang.String r7 = com.tencent.thumbplayer.tcmedia.b.f.f10552a
            r7.getClass()
            r8 = -1
            int r9 = r7.hashCode()
            switch(r9) {
                case -2046821033: goto L40;
                case -491658008: goto L35;
                case -472621683: goto L2a;
                default: goto L29;
            }
        L29:
            goto L4a
        L2a:
            java.lang.String r9 = "base_video"
            boolean r7 = r7.equals(r9)
            if (r7 != 0) goto L33
            goto L4a
        L33:
            r8 = 2
            goto L4a
        L35:
            java.lang.String r9 = "base_audio"
            boolean r7 = r7.equals(r9)
            if (r7 != 0) goto L3e
            goto L4a
        L3e:
            r8 = 1
            goto L4a
        L40:
            java.lang.String r9 = "base_longer"
            boolean r7 = r7.equals(r9)
            if (r7 != 0) goto L49
            goto L4a
        L49:
            r8 = 0
        L4a:
            switch(r8) {
                case 0: goto L4e;
                case 1: goto L51;
                case 2: goto L50;
                default: goto L4d;
            }
        L4d:
            return r5
        L4e:
            if (r4 <= 0) goto L51
        L50:
            return r2
        L51:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.tcmedia.b.e.getDurationMs():long");
    }

    @Override // com.tencent.thumbplayer.tcmedia.b.d, com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaAsset
    public int getMediaType() {
        return 4;
    }

    @Override // com.tencent.thumbplayer.tcmedia.b.d, com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaAsset
    public String getUrl() {
        try {
            return i.a(this);
        } catch (Exception e) {
            TPLogUtil.e("TPMediaComposition", e);
            return null;
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaComposition
    public void release() {
        List<ITPMediaTrack> list = this.d;
        if (list != null) {
            list.clear();
            this.d = null;
        }
        List<ITPMediaTrack> list2 = this.e;
        if (list2 != null) {
            list2.clear();
            this.e = null;
        }
        List<ITPMediaTrack> list3 = this.f;
        if (list3 != null) {
            list3.clear();
            this.f = null;
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaComposition
    public boolean removeAVTrack(ITPMediaTrack iTPMediaTrack) {
        if (iTPMediaTrack != null) {
            return this.f.remove(iTPMediaTrack);
        }
        throw new IllegalArgumentException("remove audio track , track is null .");
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaComposition
    public synchronized boolean removeAudioTrack(ITPMediaTrack iTPMediaTrack) {
        if (iTPMediaTrack != null) {
        } else {
            throw new IllegalArgumentException("remove audio track , track is null .");
        }
        return this.e.remove(iTPMediaTrack);
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaComposition
    public synchronized boolean removeVideoTrack(ITPMediaTrack iTPMediaTrack) {
        if (iTPMediaTrack != null) {
        } else {
            throw new IllegalArgumentException("remove video track , track is null .");
        }
        return this.d.remove(iTPMediaTrack);
    }
}
