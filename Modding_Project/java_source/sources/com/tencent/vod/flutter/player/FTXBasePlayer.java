package com.tencent.vod.flutter.player;

import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public abstract class FTXBasePlayer {
    private static final AtomicInteger mAtomicId = new AtomicInteger(0);
    private final int mPlayerId = mAtomicId.incrementAndGet();

    public int getPlayerId() {
        return this.mPlayerId;
    }

    public void destroy() {
    }
}
