package com.google.common.graph;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Iterator;
import java.util.Set;
import javax.annotation.CheckForNull;
/* compiled from: Proguard */
@ElementTypesAreNonnullByDefault
/* loaded from: classes5.dex */
interface GraphConnections<N, V> {
    void addPredecessor(N n, V v);

    @CanIgnoreReturnValue
    @CheckForNull
    V addSuccessor(N n, V v);

    Set<N> adjacentNodes();

    Iterator<EndpointPair<N>> incidentEdgeIterator(N n);

    Set<N> predecessors();

    void removePredecessor(N n);

    @CanIgnoreReturnValue
    @CheckForNull
    V removeSuccessor(N n);

    Set<N> successors();

    @CheckForNull
    V value(N n);
}
