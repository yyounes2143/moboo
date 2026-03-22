package j$.time.chrono;

import j$.time.LocalTime;
/* renamed from: j$.time.chrono.b  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public interface InterfaceC2153b extends j$.time.temporal.l, j$.time.temporal.n, Comparable {
    int A();

    int B(InterfaceC2153b interfaceC2153b);

    l a();

    @Override // j$.time.temporal.l
    InterfaceC2153b c(long j, j$.time.temporal.p pVar);

    @Override // j$.time.temporal.l
    InterfaceC2153b d(long j, j$.time.temporal.r rVar);

    @Override // j$.time.temporal.m
    boolean e(j$.time.temporal.p pVar);

    int hashCode();

    long s();

    InterfaceC2156e t(LocalTime localTime);

    String toString();

    boolean y();

    InterfaceC2153b z(long j, j$.time.temporal.r rVar);
}
