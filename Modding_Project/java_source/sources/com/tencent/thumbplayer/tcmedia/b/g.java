package com.tencent.thumbplayer.tcmedia.b;

import com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaTrack;
import com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaTrackClip;
import com.tencent.thumbplayer.tcmedia.utils.TPLogUtil;
import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes6.dex */
public class g extends d implements ITPMediaTrack, Serializable {

    /* renamed from: a  reason: collision with root package name */
    private int f10553a;
    private int b;
    private List<ITPMediaTrackClip> c;

    public g(int i) {
        this.f10553a = -1;
        this.b = i;
        this.c = new ArrayList();
    }

    private synchronized void a(ITPMediaTrackClip iTPMediaTrackClip) {
        try {
            if (iTPMediaTrackClip != null) {
                if (iTPMediaTrackClip.getMediaType() != this.b) {
                    throw new IllegalArgumentException("add track clip failed, media type is not same");
                }
            } else {
                throw new IllegalArgumentException("add track clip , clip can not be null");
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaTrack
    public synchronized int addTrackClip(ITPMediaTrackClip iTPMediaTrackClip) {
        a(iTPMediaTrackClip);
        if (this.c.contains(iTPMediaTrackClip)) {
            TPLogUtil.i("TPMediaCompositionTrack", "add track clip failed, clip already exists : " + iTPMediaTrackClip.getClipId());
            return iTPMediaTrackClip.getClipId();
        }
        this.c.add(iTPMediaTrackClip);
        return iTPMediaTrackClip.getClipId();
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaTrack
    public synchronized List<ITPMediaTrackClip> getAllTrackClips() {
        return this.c;
    }

    @Override // com.tencent.thumbplayer.tcmedia.b.d, com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaAsset
    public synchronized int getMediaType() {
        return this.b;
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaTrack
    public synchronized long getTimelineDurationMs() {
        long j;
        j = 0;
        for (ITPMediaTrackClip iTPMediaTrackClip : this.c) {
            j += iTPMediaTrackClip.getOriginalDurationMs();
        }
        return j;
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaTrack
    public synchronized ITPMediaTrackClip getTrackClip(int i) {
        for (ITPMediaTrackClip iTPMediaTrackClip : this.c) {
            if (iTPMediaTrackClip.getClipId() == i) {
                return iTPMediaTrackClip;
            }
        }
        return null;
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaTrack
    public synchronized int getTrackId() {
        return this.f10553a;
    }

    @Override // com.tencent.thumbplayer.tcmedia.b.d, com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaAsset
    public synchronized String getUrl() {
        try {
        } catch (IOException e) {
            TPLogUtil.e("TPMediaCompositionTrack", e);
            return null;
        }
        return i.a(this.c, this.b);
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaTrack
    public synchronized int insertTrackClip(ITPMediaTrackClip iTPMediaTrackClip, int i) {
        a(iTPMediaTrackClip);
        if (this.c.contains(iTPMediaTrackClip)) {
            TPLogUtil.i("TPMediaCompositionTrack", "add track clip failed, clip already exists : " + iTPMediaTrackClip.getClipId());
            return iTPMediaTrackClip.getClipId();
        }
        if (i == -1) {
            this.c.add(0, iTPMediaTrackClip);
            return iTPMediaTrackClip.getClipId();
        }
        int size = this.c.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (this.c.get(i2).getClipId() == i) {
                this.c.add(i2 + 1, iTPMediaTrackClip);
                return iTPMediaTrackClip.getClipId();
            }
        }
        this.c.add(iTPMediaTrackClip);
        TPLogUtil.i("TPMediaCompositionTrack", "insert track clip into the end, coz after clip not found :".concat(String.valueOf(i)));
        return iTPMediaTrackClip.getClipId();
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaTrack
    public synchronized void removeAllTrackClips() {
        this.c.clear();
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaTrack
    public synchronized boolean removeTrackClip(ITPMediaTrackClip iTPMediaTrackClip) {
        if (iTPMediaTrackClip != null) {
        } else {
            throw new IllegalArgumentException("remove track clip , clip can not be null");
        }
        return this.c.remove(iTPMediaTrackClip);
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaTrack
    public synchronized boolean swapTrackClip(int i, int i2) {
        if (i >= 0) {
            if (i < this.c.size()) {
                if (i2 >= 0 && i2 < this.c.size()) {
                    Collections.swap(this.c, i, i2);
                    return true;
                }
                TPLogUtil.w("TPMediaCompositionTrack", "swap clip failed, to pos invalid , to pos :".concat(String.valueOf(i2)));
                return false;
            }
        }
        TPLogUtil.w("TPMediaCompositionTrack", "swap clip failed, from pos invalid , from pos : ".concat(String.valueOf(i)));
        return false;
    }

    public g(int i, int i2) {
        this.f10553a = i;
        this.b = i2;
        this.c = new ArrayList();
    }
}
