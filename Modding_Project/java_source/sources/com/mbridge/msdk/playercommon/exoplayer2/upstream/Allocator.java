package com.mbridge.msdk.playercommon.exoplayer2.upstream;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public interface Allocator {
    Allocation allocate();

    int getIndividualAllocationLength();

    int getTotalBytesAllocated();

    void release(Allocation allocation);

    void release(Allocation[] allocationArr);

    void trim();
}
