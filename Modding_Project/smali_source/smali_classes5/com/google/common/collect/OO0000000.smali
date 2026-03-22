.class public final synthetic Lcom/google/common/collect/OO0000000;
.super Ljava/lang/Object;
.source "Proguard"


# direct methods
.method public static bridge synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/google/common/collect/SortedMultiset;)Ljava/util/SortedSet;
    .locals 0

    .line 1
    invoke-interface {p0}, Lcom/google/common/collect/SortedMultiset;->elementSet()Ljava/util/NavigableSet;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static bridge synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/google/common/collect/SortedMultiset;)Ljava/util/Set;
    .locals 0

    .line 1
    invoke-interface {p0}, Lcom/google/common/collect/SortedMultiset;->elementSet()Ljava/util/NavigableSet;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
