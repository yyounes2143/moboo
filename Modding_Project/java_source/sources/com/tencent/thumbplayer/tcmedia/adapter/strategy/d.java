package com.tencent.thumbplayer.tcmedia.adapter.strategy;

import com.tencent.thumbplayer.tcmedia.utils.TPLogUtil;
/* loaded from: classes6.dex */
public class d extends b {
    private int b;
    private int[] c;

    public d(com.tencent.thumbplayer.tcmedia.adapter.strategy.a.a aVar) {
        super(aVar);
        this.b = 0;
        int[] c = aVar.c();
        this.c = c;
        if (c != null && c.length != 0) {
            return;
        }
        this.c = new int[1];
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.strategy.b, com.tencent.thumbplayer.tcmedia.adapter.strategy.a
    public int a(com.tencent.thumbplayer.tcmedia.adapter.b bVar) {
        int[] iArr = this.c;
        int length = iArr.length;
        int i = this.b;
        int i2 = length > i ? iArr[i] : 0;
        int i3 = (!(i2 == 2 || i2 == 3) || b(bVar)) ? i2 : 0;
        TPLogUtil.i("TPThumbPlayer[TPExtStrategy.java]", "strategyForOpen, playerType:".concat(String.valueOf(i3)));
        return i3;
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.strategy.b, com.tencent.thumbplayer.tcmedia.adapter.strategy.a
    public int a(com.tencent.thumbplayer.tcmedia.adapter.b bVar, com.tencent.thumbplayer.tcmedia.adapter.strategy.a.b bVar2) {
        int i;
        if (bVar2 == null || bVar2.a() != 0) {
            int[] iArr = this.c;
            int length = iArr.length - 1;
            int i2 = this.b;
            if (length > i2) {
                int i3 = i2 + 1;
                this.b = i3;
                i = iArr[i3];
            } else {
                i = 0;
            }
            int i4 = (!(i == 2 || i == 3) || b(bVar)) ? i : 0;
            TPLogUtil.i("TPThumbPlayer[TPExtStrategy.java]", "strategyForRetry, playerType:".concat(String.valueOf(i4)));
            return i4;
        }
        return a(bVar);
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.strategy.b, com.tencent.thumbplayer.tcmedia.adapter.strategy.a
    public int[] a() {
        StringBuilder sb;
        int i;
        int[] iArr = {-1};
        int i2 = this.b;
        int[] iArr2 = this.c;
        if (i2 >= iArr2.length) {
            sb = new StringBuilder("strategyForDec error, decType:");
            i = iArr[0];
        } else {
            int i3 = iArr2[i2];
            if (i3 == 1 || i3 == 2) {
                iArr[0] = 102;
            } else if (i3 == 3) {
                iArr[0] = 101;
            }
            sb = new StringBuilder("strategyForDec, decType:");
            i = iArr[0];
        }
        sb.append(i);
        TPLogUtil.i("TPThumbPlayer[TPExtStrategy.java]", sb.toString());
        return iArr;
    }
}
