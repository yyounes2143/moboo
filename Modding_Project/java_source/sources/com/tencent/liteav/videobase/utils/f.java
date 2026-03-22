package com.tencent.liteav.videobase.utils;

import com.tencent.liteav.videobase.frame.PixelFrame;
import java.util.Deque;
import java.util.LinkedList;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public final Deque<PixelFrame> f10404a = new LinkedList();
    public int b = 1;

    public final PixelFrame a() {
        PixelFrame pollFirst;
        synchronized (this) {
            pollFirst = this.f10404a.pollFirst();
        }
        return pollFirst;
    }
}
