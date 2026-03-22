package com.google.common.graph;

import com.google.common.annotations.Beta;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
/* compiled from: Proguard */
@Beta
@ElementTypesAreNonnullByDefault
/* loaded from: classes5.dex */
public interface MutableNetwork<N, E> extends Network<N, E> {
    @CanIgnoreReturnValue
    boolean addEdge(EndpointPair<N> endpointPair, E e);

    @CanIgnoreReturnValue
    boolean addEdge(N n, N n2, E e);

    @CanIgnoreReturnValue
    boolean addNode(N n);

    @CanIgnoreReturnValue
    boolean removeEdge(E e);

    @CanIgnoreReturnValue
    boolean removeNode(N n);
}
