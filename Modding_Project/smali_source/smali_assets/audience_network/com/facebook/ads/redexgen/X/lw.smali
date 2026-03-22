.class public final Lcom/facebook/ads/redexgen/X/lw;
.super Lcom/facebook/ads/redexgen/X/35;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/93;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field public static A0G:[Ljava/lang/String;


# instance fields
.field public A00:Z

.field public A01:Z

.field public A02:Z

.field public A03:Z

.field public A04:Z

.field public A05:Z

.field public A06:Z

.field public A07:Z

.field public A08:Z

.field public A09:Z

.field public A0A:Z
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "D25277746 - If all qualities are filtered out, do not use a fixed selection but differ to adaptive track selection in hero."
    .end annotation
.end field

.field public A0B:Z

.field public A0C:Z

.field public A0D:Z

.field public final A0E:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lcom/facebook/ads/redexgen/X/mA;",
            "Lcom/facebook/ads/redexgen/X/lo;",
            ">;>;"
        }
    .end annotation
.end field

.field public final A0F:Landroid/util/SparseBooleanArray;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3139
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "svIlLfjydeGBu6G0UjrHSopJ4Ky0wypW"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Eix0ooWKKyHx1hOwK"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "jEg8xHvrvI0NXBTEehRxqQQjEYaTbIQI"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "2fo"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "JdZ"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "dfBQZRQYRFpeihXeeCDcyjRnxunK4YCt"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ZC"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "go43CHW4mwtjJCZZxmpd9eXXAUtGDH29"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/lw;->A0G:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 97701
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/35;-><init>()V

    .line 97702
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lw;->A0E:Landroid/util/SparseArray;

    .line 97703
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lw;->A0F:Landroid/util/SparseBooleanArray;

    .line 97704
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/lw;->A0W()V

    .line 97705
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 97706
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/35;-><init>(Landroid/content/Context;)V

    .line 97707
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lw;->A0E:Landroid/util/SparseArray;

    .line 97708
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lw;->A0F:Landroid/util/SparseBooleanArray;

    .line 97709
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/lw;->A0W()V

    .line 97710
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 3
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Modified to support setExceedRendererCapabilitiesIfAllFilteredOut"
    .end annotation

    .line 97711
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/35;-><init>(Landroid/os/Bundle;)V

    .line 97712
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/lw;->A0W()V

    .line 97713
    sget-object v2, Lcom/facebook/ads/redexgen/X/93;->A0J:Lcom/facebook/ads/redexgen/X/93;

    .line 97714
    .local v0, "defaultValue":Lcom/facebook/ads/redexgen/X/93;
    invoke-static {}, Lcom/facebook/ads/redexgen/X/93;->A0D()Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/93;->A0C:Z

    .line 97715
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 97716
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/lw;->A17(Z)Lcom/facebook/ads/redexgen/X/lw;

    .line 97717
    invoke-static {}, Lcom/facebook/ads/redexgen/X/93;->A0F()Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/93;->A06:Z

    .line 97718
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 97719
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/lw;->A11(Z)Lcom/facebook/ads/redexgen/X/lw;

    .line 97720
    invoke-static {}, Lcom/facebook/ads/redexgen/X/93;->A0G()Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/93;->A07:Z

    .line 97721
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 97722
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/lw;->A12(Z)Lcom/facebook/ads/redexgen/X/lw;

    .line 97723
    invoke-static {}, Lcom/facebook/ads/redexgen/X/93;->A0H()Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/93;->A05:Z

    .line 97724
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 97725
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/lw;->A10(Z)Lcom/facebook/ads/redexgen/X/lw;

    .line 97726
    invoke-static {}, Lcom/facebook/ads/redexgen/X/93;->A0I()Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/93;->A09:Z

    .line 97727
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 97728
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/lw;->A14(Z)Lcom/facebook/ads/redexgen/X/lw;

    .line 97729
    invoke-static {}, Lcom/facebook/ads/redexgen/X/93;->A0J()Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/93;->A02:Z

    .line 97730
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 97731
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/lw;->A0x(Z)Lcom/facebook/ads/redexgen/X/lw;

    .line 97732
    invoke-static {}, Lcom/facebook/ads/redexgen/X/93;->A0K()Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/93;->A03:Z

    .line 97733
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 97734
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/lw;->A0y(Z)Lcom/facebook/ads/redexgen/X/lw;

    .line 97735
    invoke-static {}, Lcom/facebook/ads/redexgen/X/93;->A0L()Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/93;->A00:Z

    .line 97736
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 97737
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/lw;->A0v(Z)Lcom/facebook/ads/redexgen/X/lw;

    .line 97738
    invoke-static {}, Lcom/facebook/ads/redexgen/X/93;->A04()Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/93;->A01:Z

    .line 97739
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 97740
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/lw;->A0w(Z)Lcom/facebook/ads/redexgen/X/lw;

    .line 97741
    invoke-static {}, Lcom/facebook/ads/redexgen/X/93;->A05()Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/93;->A08:Z

    .line 97742
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 97743
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/lw;->A13(Z)Lcom/facebook/ads/redexgen/X/lw;

    .line 97744
    invoke-static {}, Lcom/facebook/ads/redexgen/X/93;->A06()Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/93;->A0B:Z

    .line 97745
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 97746
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/lw;->A16(Z)Lcom/facebook/ads/redexgen/X/lw;

    .line 97747
    invoke-static {}, Lcom/facebook/ads/redexgen/X/93;->A07()Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/93;->A0D:Z

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 97748
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/lw;->A18(Z)Lcom/facebook/ads/redexgen/X/lw;

    .line 97749
    invoke-static {}, Lcom/facebook/ads/redexgen/X/93;->A08()Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/93;->A04:Z

    .line 97750
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 97751
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/lw;->A0z(Z)Lcom/facebook/ads/redexgen/X/lw;

    .line 97752
    invoke-static {}, Lcom/facebook/ads/redexgen/X/93;->A09()Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/93;->A0A:Z

    .line 97753
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 97754
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/lw;->A15(Z)Lcom/facebook/ads/redexgen/X/lw;

    .line 97755
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lw;->A0E:Landroid/util/SparseArray;

    .line 97756
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/lw;->A0X(Landroid/os/Bundle;)V

    .line 97757
    invoke-static {}, Lcom/facebook/ads/redexgen/X/93;->A0A()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 97758
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/lw;->A0R([I)Landroid/util/SparseBooleanArray;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lw;->A0F:Landroid/util/SparseBooleanArray;

    .line 97759
    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/Dz;)V
    .locals 0

    .line 97760
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/lw;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/93;)V
    .locals 1
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "To support exceedRendererCapabilitiesIfAllFilteredOut"
    .end annotation

    .line 97761
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/35;-><init>(Lcom/facebook/ads/redexgen/X/oA;)V

    .line 97762
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/93;->A0C:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lw;->A0C:Z

    .line 97763
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/93;->A06:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lw;->A06:Z

    .line 97764
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/93;->A07:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lw;->A07:Z

    .line 97765
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/93;->A05:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lw;->A05:Z

    .line 97766
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/93;->A09:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lw;->A09:Z

    .line 97767
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/93;->A02:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lw;->A02:Z

    .line 97768
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/93;->A03:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lw;->A03:Z

    .line 97769
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/93;->A00:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lw;->A00:Z

    .line 97770
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/93;->A01:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lw;->A01:Z

    .line 97771
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/93;->A08:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lw;->A08:Z

    .line 97772
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/93;->A0B:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lw;->A0B:Z

    .line 97773
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/93;->A0D:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lw;->A0D:Z

    .line 97774
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/93;->A04:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lw;->A04:Z

    .line 97775
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/93;->A0A:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lw;->A0A:Z

    .line 97776
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/93;->A00(Lcom/facebook/ads/redexgen/X/93;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/lw;->A0G(Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lw;->A0E:Landroid/util/SparseArray;

    .line 97777
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/93;->A01(Lcom/facebook/ads/redexgen/X/93;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lw;->A0F:Landroid/util/SparseBooleanArray;

    .line 97778
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/93;Lcom/facebook/ads/redexgen/X/Dz;)V
    .locals 0

    .line 97779
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/lw;-><init>(Lcom/facebook/ads/redexgen/X/93;)V

    return-void
.end method

.method public static A0G(Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lcom/facebook/ads/redexgen/X/mA;",
            "Lcom/facebook/ads/redexgen/X/lo;",
            ">;>;)",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lcom/facebook/ads/redexgen/X/mA;",
            "Lcom/facebook/ads/redexgen/X/lo;",
            ">;>;"
        }
    .end annotation

    .line 97780
    .local p0, "selectionOverrides":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Map<Lcom/facebook/ads/androidx/media3/exoplayer/source/TrackGroupArray;Lcom/facebook/ads/androidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;>;>;"
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 97781
    .local v0, "clone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Map<Lcom/facebook/ads/androidx/media3/exoplayer/source/TrackGroupArray;Lcom/facebook/ads/androidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;>;>;"
    const/4 v3, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 97782
    invoke-virtual {p0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v4, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 97783
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 97784
    .end local v1    # "i":I
    :cond_0
    return-object v4
.end method

.method public static synthetic A0P(Lcom/facebook/ads/redexgen/X/lw;)Landroid/util/SparseArray;
    .locals 0

    .line 97785
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/lw;->A0E:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static synthetic A0Q(Lcom/facebook/ads/redexgen/X/lw;)Landroid/util/SparseBooleanArray;
    .locals 0

    .line 97786
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/lw;->A0F:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method private A0R([I)Landroid/util/SparseBooleanArray;
    .locals 5

    .line 97787
    if-nez p1, :cond_0

    .line 97788
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    return-object v0

    .line 97789
    :cond_0
    array-length v0, p1

    new-instance v4, Landroid/util/SparseBooleanArray;

    invoke-direct {v4, v0}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 97790
    .local v0, "sparseBooleanArray":Landroid/util/SparseBooleanArray;
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget v1, p1, v2

    .line 97791
    .local v3, "trueKey":I
    const/4 v0, 0x1

    invoke-virtual {v4, v1, v0}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 97792
    .end local v3    # "trueKey":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 97793
    :cond_1
    return-object v4
.end method

.method private A0W()V
    .locals 2
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "To support setting exceedRendererCapabilitiesIfAllFilteredOut"
    .end annotation

    .line 97794
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/lw;->A0C:Z

    .line 97795
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lw;->A06:Z

    .line 97796
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/lw;->A07:Z

    .line 97797
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lw;->A05:Z

    .line 97798
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/lw;->A09:Z

    .line 97799
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lw;->A02:Z

    .line 97800
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lw;->A03:Z

    .line 97801
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lw;->A00:Z

    .line 97802
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lw;->A01:Z

    .line 97803
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/lw;->A08:Z

    .line 97804
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/lw;->A0B:Z

    .line 97805
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lw;->A0D:Z

    .line 97806
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/lw;->A04:Z

    .line 97807
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lw;->A0A:Z

    .line 97808
    return-void
.end method

.method private A0X(Landroid/os/Bundle;)V
    .locals 7

    .line 97809
    invoke-static {}, Lcom/facebook/ads/redexgen/X/93;->A0B()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    .line 97810
    .local v0, "rendererIndices":[I
    invoke-static {}, Lcom/facebook/ads/redexgen/X/93;->A0C()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 97811
    .local v1, "trackGroupArrayBundles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    if-nez v5, :cond_2

    .line 97812
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Am;->A03()Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v6

    .line 97813
    .local v2, "trackGroupArrays":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/exoplayer/source/TrackGroupArray;>;"
    :goto_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/93;->A0E()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v1

    .line 97814
    .local v3, "selectionOverrideBundles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Bundle;>;"
    if-nez v1, :cond_1

    .line 97815
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 97816
    .local v4, "selectionOverrides":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/androidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;>;"
    :goto_1
    if-eqz v4, :cond_0

    array-length v1, v4

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-eq v1, v0, :cond_3

    .line 97817
    :cond_0
    return-void

    .line 97818
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/lo;->A05:Lcom/facebook/ads/redexgen/X/1R;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/3S;->A00(Lcom/facebook/ads/redexgen/X/1R;Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object v5

    goto :goto_1

    .line 97819
    :cond_2
    sget-object v3, Lcom/facebook/ads/redexgen/X/mA;->A05:Lcom/facebook/ads/redexgen/X/1R;

    sget-object v2, Lcom/facebook/ads/redexgen/X/lw;->A0G:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/lw;->A0G:[Ljava/lang/String;

    const-string v1, "KlsLVpZXOsku5rL5eePguYtdE3UqynPn"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "qpearOu2I9fJNwBbehSRgczBWJlsPwpY"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-static {v3, v5}, Lcom/facebook/ads/redexgen/X/3S;->A01(Lcom/facebook/ads/redexgen/X/1R;Ljava/util/List;)Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v6

    goto :goto_0

    .line 97820
    :cond_3
    const/4 v3, 0x0

    .local v5, "i":I
    :goto_2
    array-length v0, v4

    if-ge v3, v0, :cond_4

    .line 97821
    aget v2, v4, v3

    .line 97822
    .local v6, "rendererIndex":I
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/mA;

    .line 97823
    .local p0, "groups":Lcom/facebook/ads/redexgen/X/mA;
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/lo;

    .line 97824
    .local p1, "selectionOverride":Lcom/facebook/ads/redexgen/X/lo;
    invoke-virtual {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lw;->A0r(ILcom/facebook/ads/redexgen/X/mA;Lcom/facebook/ads/redexgen/X/lo;)Lcom/facebook/ads/redexgen/X/lw;

    .line 97825
    .end local v6    # "rendererIndex":I
    .end local p0    # "groups":Lcom/facebook/ads/redexgen/X/mA;
    .end local p1    # "selectionOverride":Lcom/facebook/ads/redexgen/X/lo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 97826
    .end local v5    # "i":I
    :cond_4
    return-void

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic A0Y(Lcom/facebook/ads/redexgen/X/lw;)Z
    .locals 0

    .line 97827
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/lw;->A0C:Z

    return p0
.end method

.method public static synthetic A0Z(Lcom/facebook/ads/redexgen/X/lw;)Z
    .locals 0

    .line 97828
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/lw;->A06:Z

    return p0
.end method

.method public static synthetic A0a(Lcom/facebook/ads/redexgen/X/lw;)Z
    .locals 0

    .line 97829
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/lw;->A07:Z

    return p0
.end method

.method public static synthetic A0b(Lcom/facebook/ads/redexgen/X/lw;)Z
    .locals 0

    .line 97830
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/lw;->A05:Z

    return p0
.end method

.method public static synthetic A0c(Lcom/facebook/ads/redexgen/X/lw;)Z
    .locals 0

    .line 97831
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/lw;->A09:Z

    return p0
.end method

.method public static synthetic A0d(Lcom/facebook/ads/redexgen/X/lw;)Z
    .locals 0

    .line 97832
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/lw;->A02:Z

    return p0
.end method

.method public static synthetic A0e(Lcom/facebook/ads/redexgen/X/lw;)Z
    .locals 0

    .line 97833
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/lw;->A03:Z

    return p0
.end method

.method public static synthetic A0f(Lcom/facebook/ads/redexgen/X/lw;)Z
    .locals 0

    .line 97834
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/lw;->A00:Z

    return p0
.end method

.method public static synthetic A0g(Lcom/facebook/ads/redexgen/X/lw;)Z
    .locals 0

    .line 97835
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/lw;->A01:Z

    return p0
.end method

.method public static synthetic A0h(Lcom/facebook/ads/redexgen/X/lw;)Z
    .locals 0

    .line 97836
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/lw;->A08:Z

    return p0
.end method

.method public static synthetic A0i(Lcom/facebook/ads/redexgen/X/lw;)Z
    .locals 0

    .line 97837
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/lw;->A0B:Z

    return p0
.end method

.method public static synthetic A0j(Lcom/facebook/ads/redexgen/X/lw;)Z
    .locals 0

    .line 97838
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/lw;->A0D:Z

    return p0
.end method

.method public static synthetic A0k(Lcom/facebook/ads/redexgen/X/lw;)Z
    .locals 0

    .line 97839
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/lw;->A04:Z

    return p0
.end method

.method public static synthetic A0l(Lcom/facebook/ads/redexgen/X/lw;)Z
    .locals 0

    .line 97840
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/lw;->A0A:Z

    return p0
.end method


# virtual methods
.method public final bridge synthetic A0m(IIZ)Lcom/facebook/ads/redexgen/X/35;
    .locals 1

    .line 97841
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/lw;->A0q(IIZ)Lcom/facebook/ads/redexgen/X/lw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic A0n(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/35;
    .locals 1

    .line 97842
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/lw;->A0s(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/lw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic A0o(Landroid/content/Context;Z)Lcom/facebook/ads/redexgen/X/35;
    .locals 1

    .line 97843
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/lw;->A0t(Landroid/content/Context;Z)Lcom/facebook/ads/redexgen/X/lw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic A0p()Lcom/facebook/ads/redexgen/X/oA;
    .locals 1

    .line 97844
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lw;->A19()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    return-object v0
.end method

.method public final A0q(IIZ)Lcom/facebook/ads/redexgen/X/lw;
    .locals 0

    .line 97845
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/35;->A0m(IIZ)Lcom/facebook/ads/redexgen/X/35;

    .line 97846
    return-object p0
.end method

.method public final A0r(ILcom/facebook/ads/redexgen/X/mA;Lcom/facebook/ads/redexgen/X/lo;)Lcom/facebook/ads/redexgen/X/lw;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 97847
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lw;->A0E:Landroid/util/SparseArray;

    .line 97848
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 97849
    .local v0, "overrides":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/ads/androidx/media3/exoplayer/source/TrackGroupArray;Lcom/facebook/ads/androidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;>;"
    if-nez v3, :cond_0

    .line 97850
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 97851
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lw;->A0E:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 97852
    :cond_0
    invoke-interface {v3, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/lw;->A0G:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/lw;->A0G:[Ljava/lang/String;

    const-string v1, "Tjk1w46Zsfr3yClteaW3dwU9W0N7TL6X"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "KoERYkShSHV4ud9Re9JlKSMcCXAYN5Cn"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v4, :cond_3

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/lw;->A0G:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/lw;->A0G:[Ljava/lang/String;

    const-string v1, "d9Fp2lxah88hbF8VY"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "He"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-static {v4, p3}, Lcom/facebook/ads/redexgen/X/4a;->A1E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 97853
    :goto_0
    return-object p0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/lw;->A0G:[Ljava/lang/String;

    const-string v1, "6G3DmRjovsWEEopHgL7H9VeUKDmRIoIA"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "heYp32NvS9S7pouisOnfj6NnH9zTXJMv"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-static {v4, p3}, Lcom/facebook/ads/redexgen/X/4a;->A1E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 97854
    :cond_3
    invoke-interface {v3, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97855
    return-object p0
.end method

.method public final A0s(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/lw;
    .locals 0

    .line 97856
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/35;->A0n(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/35;

    .line 97857
    return-object p0
.end method

.method public final A0t(Landroid/content/Context;Z)Lcom/facebook/ads/redexgen/X/lw;
    .locals 0

    .line 97858
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/35;->A0o(Landroid/content/Context;Z)Lcom/facebook/ads/redexgen/X/35;

    .line 97859
    return-object p0
.end method

.method public final A0u(Lcom/facebook/ads/redexgen/X/oA;)Lcom/facebook/ads/redexgen/X/lw;
    .locals 0

    .line 97860
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/35;->A0W(Lcom/facebook/ads/redexgen/X/oA;)Lcom/facebook/ads/redexgen/X/35;

    .line 97861
    return-object p0
.end method

.method public final A0v(Z)Lcom/facebook/ads/redexgen/X/lw;
    .locals 0

    .line 97862
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/lw;->A00:Z

    .line 97863
    return-object p0
.end method

.method public final A0w(Z)Lcom/facebook/ads/redexgen/X/lw;
    .locals 0

    .line 97864
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/lw;->A01:Z

    .line 97865
    return-object p0
.end method

.method public final A0x(Z)Lcom/facebook/ads/redexgen/X/lw;
    .locals 0

    .line 97866
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/lw;->A02:Z

    .line 97867
    return-object p0
.end method

.method public final A0y(Z)Lcom/facebook/ads/redexgen/X/lw;
    .locals 0

    .line 97868
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/lw;->A03:Z

    .line 97869
    return-object p0
.end method

.method public final A0z(Z)Lcom/facebook/ads/redexgen/X/lw;
    .locals 0

    .line 97870
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/lw;->A04:Z

    .line 97871
    return-object p0
.end method

.method public final A10(Z)Lcom/facebook/ads/redexgen/X/lw;
    .locals 0

    .line 97872
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/lw;->A05:Z

    .line 97873
    return-object p0
.end method

.method public final A11(Z)Lcom/facebook/ads/redexgen/X/lw;
    .locals 0

    .line 97874
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/lw;->A06:Z

    .line 97875
    return-object p0
.end method

.method public final A12(Z)Lcom/facebook/ads/redexgen/X/lw;
    .locals 0

    .line 97876
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/lw;->A07:Z

    .line 97877
    return-object p0
.end method

.method public final A13(Z)Lcom/facebook/ads/redexgen/X/lw;
    .locals 0

    .line 97878
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/lw;->A08:Z

    .line 97879
    return-object p0
.end method

.method public final A14(Z)Lcom/facebook/ads/redexgen/X/lw;
    .locals 0

    .line 97880
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/lw;->A09:Z

    .line 97881
    return-object p0
.end method

.method public final A15(Z)Lcom/facebook/ads/redexgen/X/lw;
    .locals 0
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "D25277746"
    .end annotation

    .line 97882
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/lw;->A0A:Z

    .line 97883
    return-object p0
.end method

.method public final A16(Z)Lcom/facebook/ads/redexgen/X/lw;
    .locals 0

    .line 97884
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/lw;->A0B:Z

    .line 97885
    return-object p0
.end method

.method public final A17(Z)Lcom/facebook/ads/redexgen/X/lw;
    .locals 0

    .line 97886
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/lw;->A0C:Z

    .line 97887
    return-object p0
.end method

.method public final A18(Z)Lcom/facebook/ads/redexgen/X/lw;
    .locals 0

    .line 97888
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/lw;->A0D:Z

    .line 97889
    return-object p0
.end method

.method public final A19()Lcom/facebook/ads/redexgen/X/93;
    .locals 2

    .line 97890
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/93;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/93;-><init>(Lcom/facebook/ads/redexgen/X/lw;Lcom/facebook/ads/redexgen/X/Dz;)V

    return-object v0
.end method
