package com.tencent.thumbplayer.tcmedia.b;

import android.text.TextUtils;
import com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaTrackClip;
import java.io.Serializable;
/* loaded from: classes6.dex */
public class h extends d implements ITPMediaTrackClip, Serializable {

    /* renamed from: a  reason: collision with root package name */
    private int f10554a;
    private int b;
    private long c;
    private long d;
    private String e;
    private long f;
    private long g;

    private h() {
    }

    public void a(String str) {
        this.e = str;
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaTrackClip
    public ITPMediaTrackClip clone(int i) {
        if (i != 3 && i != 2 && i != 1) {
            return null;
        }
        h hVar = new h();
        hVar.f10554a = i;
        hVar.b = f.a(this.f10554a);
        hVar.c = this.c;
        hVar.d = this.d;
        hVar.e = this.e;
        return hVar;
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        if (this.b != hVar.getClipId() || this.f10554a != hVar.getMediaType()) {
            return false;
        }
        return true;
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaTrackClip
    public int getClipId() {
        return this.b;
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaTrackClip
    public long getEndTimeMs() {
        return this.d;
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaTrackClip
    public String getFilePath() {
        return this.e;
    }

    @Override // com.tencent.thumbplayer.tcmedia.b.d, com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaAsset
    public int getMediaType() {
        return this.f10554a;
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaTrackClip
    public long getOriginalDurationMs() {
        return this.g;
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaTrackClip
    public long getStartPositionMs() {
        return this.f;
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaTrackClip
    public long getStartTimeMs() {
        return this.c;
    }

    @Override // com.tencent.thumbplayer.tcmedia.b.d, com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaAsset
    public String getUrl() {
        return this.e;
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaTrackClip
    public void setCutTimeRange(long j, long j2) {
        if (j < getOriginalDurationMs()) {
            if (j2 <= getOriginalDurationMs()) {
                if (j < 0) {
                    j = 0;
                }
                if (j2 <= 0) {
                    j2 = getOriginalDurationMs();
                }
                if (j < j2) {
                    this.c = j;
                    this.d = j2;
                    return;
                }
                throw new IllegalArgumentException("setCutTimeRange: Start time is greater than end time");
            }
            throw new IllegalArgumentException("setCutTimeRange: Start time is greater than duration");
        }
        throw new IllegalArgumentException("setCutTimeRange: Start time is greater than duration");
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaTrackClip
    public void setOriginalDurationMs(long j) {
        this.g = j;
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaTrackClip
    public void setStartPositionMs(long j) {
        this.f = j;
    }

    public h(String str, int i) {
        this(str, i, 0L, -1L);
    }

    public h(String str, int i, long j, long j2) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("TPMediaCompositionTrackClip : clipPath empty");
        }
        this.f10554a = i;
        this.e = str;
        this.c = j;
        this.d = j2;
        if (j < 0) {
            this.c = 0L;
        }
        if (j2 <= 0) {
            this.d = getOriginalDurationMs();
        }
        this.b = f.a(this.f10554a);
    }
}
