.class public abstract Lcom/facebook/ads/androidx/media3/common/Timeline;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/1S;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/oL;,
        Lcom/facebook/ads/redexgen/X/oN;,
        Lcom/facebook/ads/redexgen/X/9m;
    }
.end annotation


# static fields
.field public static A00:[Ljava/lang/String;

.field public static final A01:Lcom/facebook/ads/redexgen/X/1R;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/1R<",
            "Lcom/facebook/ads/androidx/media3/common/Timeline;",
            ">;"
        }
    .end annotation
.end field

.field public static final A02:Lcom/facebook/ads/androidx/media3/common/Timeline;

.field public static final A03:Ljava/lang/String;

.field public static final A04:Ljava/lang/String;

.field public static final A05:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3265
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "u1TV1j0aFj13GJQ9ixTagHG8KyMgbnog"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "4GMeFBxldVuonExwkIPaDDi9I59L728Z"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "hqD1wOYcZTmehOTQOtlNc0UQ2KV4ETaI"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "yejsGunEYiKaKfUzobCfCtheJf3zEEcL"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "wYd9LRHFlTpJXE3VqmNr3ySXFdmyeGzN"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "VCegaKN739XbWKUaP5Uwy30Zmvr6QTeK"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Cr3igiuAIuu"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "x89DN52UD2fFRZn9rQXfWzGYhaiJYHE1"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/androidx/media3/common/Timeline;->A00:[Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/9n;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/9n;-><init>()V

    sput-object v0, Lcom/facebook/ads/androidx/media3/common/Timeline;->A02:Lcom/facebook/ads/androidx/media3/common/Timeline;

    .line 3266
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/androidx/media3/common/Timeline;->A05:Ljava/lang/String;

    .line 3267
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/androidx/media3/common/Timeline;->A03:Ljava/lang/String;

    .line 3268
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/androidx/media3/common/Timeline;->A04:Ljava/lang/String;

    .line 3269
    new-instance v0, Lcom/facebook/ads/redexgen/X/oP;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/oP;-><init>()V

    sput-object v0, Lcom/facebook/ads/androidx/media3/common/Timeline;->A01:Lcom/facebook/ads/redexgen/X/1R;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 101618
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A02(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/9m;
    .locals 4

    .line 101619
    sget-object v1, Lcom/facebook/ads/redexgen/X/oL;->A0J:Lcom/facebook/ads/redexgen/X/1R;

    sget-object v0, Lcom/facebook/ads/androidx/media3/common/Timeline;->A05:Ljava/lang/String;

    .line 101620
    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/3R;->A00(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A04(Lcom/facebook/ads/redexgen/X/1R;Landroid/os/IBinder;)Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v3

    .line 101621
    .local v0, "windows":Lcom/facebook/ads/redexgen/X/Am;, "Lcom/google/common/collect/ImmutableList<Lcom/facebook/ads/androidx/media3/common/Timeline$Window;>;"
    sget-object v1, Lcom/facebook/ads/redexgen/X/oN;->A08:Lcom/facebook/ads/redexgen/X/1R;

    sget-object v0, Lcom/facebook/ads/androidx/media3/common/Timeline;->A03:Ljava/lang/String;

    .line 101622
    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/3R;->A00(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A04(Lcom/facebook/ads/redexgen/X/1R;Landroid/os/IBinder;)Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v2

    .line 101623
    .local v1, "periods":Lcom/facebook/ads/redexgen/X/Am;, "Lcom/google/common/collect/ImmutableList<Lcom/facebook/ads/androidx/media3/common/Timeline$Period;>;"
    sget-object v0, Lcom/facebook/ads/androidx/media3/common/Timeline;->A04:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 101624
    .local v2, "shuffledWindowIndices":[I
    if-nez v1, :cond_0

    .line 101625
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Am;->size()I

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A05(I)[I

    move-result-object v1

    .line 101626
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/9m;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/9m;-><init>(Lcom/facebook/ads/redexgen/X/Am;Lcom/facebook/ads/redexgen/X/Am;[I)V

    .line 101627
    return-object v0
.end method

.method public static synthetic A03(Landroid/os/Bundle;)Lcom/facebook/ads/androidx/media3/common/Timeline;
    .locals 0

    invoke-static {p0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A02(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/9m;

    move-result-object p0

    return-object p0
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/1R;Landroid/os/IBinder;)Lcom/facebook/ads/redexgen/X/Am;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/ads/redexgen/X/1S;",
            ">(",
            "Lcom/facebook/ads/redexgen/X/1R<",
            "TT;>;",
            "Landroid/os/IBinder;",
            ")",
            "Lcom/facebook/ads/redexgen/X/Am<",
            "TT;>;"
        }
    .end annotation

    .line 101628
    .local p0, "creator":Lcom/facebook/ads/redexgen/X/1R;, "Lcom/facebook/ads/androidx/media3/common/Bundleable$Creator<TT;>;"
    if-nez p1, :cond_0

    .line 101629
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Am;->A03()Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v0

    return-object v0

    .line 101630
    :cond_0
    new-instance v3, Lcom/facebook/ads/redexgen/X/1h;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/1h;-><init>()V

    .line 101631
    .local v0, "builder":Lcom/facebook/ads/redexgen/X/1h;, "Lcom/google/common/collect/ImmutableList$Builder<TT;>;"
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/1Q;->A00(Landroid/os/IBinder;)Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v2

    .line 101632
    .local v1, "bundleList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    const/4 v1, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 101633
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-interface {p0, v0}, Lcom/facebook/ads/redexgen/X/1R;->A6X(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/1S;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/1h;->A04(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/1h;

    .line 101634
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101635
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/1h;->A05()Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v0

    return-object v0
.end method

.method public static A05(I)[I
    .locals 5

    .line 101636
    new-array v4, p0, [I

    .line 101637
    .local v0, "indices":[I
    const/4 v3, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v3, p0, :cond_1

    .line 101638
    aput v3, v4, v3

    sget-object v1, Lcom/facebook/ads/androidx/media3/common/Timeline;->A00:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x32

    if-eq v1, v0, :cond_0

    .line 101639
    sget-object v2, Lcom/facebook/ads/androidx/media3/common/Timeline;->A00:[Ljava/lang/String;

    const-string v1, "bm1hpxiL8T70YPoy7qoC4X3DFFhRRvrI"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "ZU2doOYnXTdq2XyitRV5O0BVNSu1NLTL"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 101640
    .end local v1    # "i":I
    :cond_1
    return-object v4
.end method


# virtual methods
.method public abstract A06()I
.end method

.method public abstract A07()I
.end method

.method public A08(IIZ)I
    .locals 4

    .line 101641
    packed-switch p2, :pswitch_data_0

    .line 101642
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 101643
    :pswitch_0
    invoke-virtual {p0, p3}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0C(Z)I

    move-result v3

    sget-object v2, Lcom/facebook/ads/androidx/media3/common/Timeline;->A00:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/androidx/media3/common/Timeline;->A00:[Ljava/lang/String;

    const-string v1, "R0HEAX03GiDQUcMP0CiDD2yYG3qNGv8H"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ne p1, v3, :cond_1

    .line 101644
    invoke-virtual {p0, p3}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0B(Z)I

    move-result v0

    .line 101645
    :goto_0
    return v0

    .line 101646
    :cond_1
    add-int/lit8 v0, p1, 0x1

    goto :goto_0

    .line 101647
    :pswitch_1
    return p1

    .line 101648
    :pswitch_2
    invoke-virtual {p0, p3}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0C(Z)I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 101649
    const/4 v0, -0x1

    .line 101650
    :goto_1
    return v0

    .line 101651
    :cond_2
    add-int/lit8 v0, p1, 0x1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final A09(ILcom/facebook/ads/redexgen/X/oN;Lcom/facebook/ads/redexgen/X/oL;IZ)I
    .locals 2

    .line 101652
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0H(ILcom/facebook/ads/redexgen/X/oN;)Lcom/facebook/ads/redexgen/X/oN;

    move-result-object v0

    iget v1, v0, Lcom/facebook/ads/redexgen/X/oN;->A00:I

    .line 101653
    .local v0, "windowIndex":I
    invoke-virtual {p0, v1, p3}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0K(ILcom/facebook/ads/redexgen/X/oL;)Lcom/facebook/ads/redexgen/X/oL;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/oL;->A01:I

    if-ne v0, p1, :cond_1

    .line 101654
    invoke-virtual {p0, v1, p4, p5}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A08(IIZ)I

    move-result v1

    .line 101655
    .local v1, "nextWindowIndex":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 101656
    return v0

    .line 101657
    :cond_0
    invoke-virtual {p0, v1, p3}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0K(ILcom/facebook/ads/redexgen/X/oL;)Lcom/facebook/ads/redexgen/X/oL;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/oL;->A00:I

    return v0

    .line 101658
    .end local v1    # "nextWindowIndex":I
    :cond_1
    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method public abstract A0A(Ljava/lang/Object;)I
.end method

.method public A0B(Z)I
    .locals 1

    .line 101659
    invoke-virtual {p0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0N()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public A0C(Z)I
    .locals 1

    .line 101660
    invoke-virtual {p0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0N()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A07()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public final A0D(Lcom/facebook/ads/redexgen/X/oL;Lcom/facebook/ads/redexgen/X/oN;IJ)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/oL;",
            "Lcom/facebook/ads/redexgen/X/oN;",
            "IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 101661
    invoke-virtual/range {p0 .. p5}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0E(Lcom/facebook/ads/redexgen/X/oL;Lcom/facebook/ads/redexgen/X/oN;IJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public final A0E(Lcom/facebook/ads/redexgen/X/oL;Lcom/facebook/ads/redexgen/X/oN;IJ)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/oL;",
            "Lcom/facebook/ads/redexgen/X/oN;",
            "IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 101662
    const-wide/16 v6, 0x0

    move-object v0, p0

    move-wide v4, p4

    move v3, p3

    move-object v2, p2

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0G(Lcom/facebook/ads/redexgen/X/oL;Lcom/facebook/ads/redexgen/X/oN;IJJ)Landroid/util/Pair;

    move-result-object v0

    .line 101663
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    return-object v0
.end method

.method public final A0F(Lcom/facebook/ads/redexgen/X/oL;Lcom/facebook/ads/redexgen/X/oN;IJJ)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/oL;",
            "Lcom/facebook/ads/redexgen/X/oN;",
            "IJJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 101664
    invoke-virtual/range {p0 .. p7}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0G(Lcom/facebook/ads/redexgen/X/oL;Lcom/facebook/ads/redexgen/X/oN;IJJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public final A0G(Lcom/facebook/ads/redexgen/X/oL;Lcom/facebook/ads/redexgen/X/oN;IJJ)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/oL;",
            "Lcom/facebook/ads/redexgen/X/oN;",
            "IJJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 101665
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A07()I

    move-result v0

    invoke-static {p3, v1, v0}, Lcom/facebook/ads/redexgen/X/3M;->A00(III)I

    .line 101666
    invoke-virtual {p0, p3, p1, p6, p7}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0L(ILcom/facebook/ads/redexgen/X/oL;J)Lcom/facebook/ads/redexgen/X/oL;

    .line 101667
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p4, v4

    if-nez v0, :cond_0

    .line 101668
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/oL;->A05()J

    move-result-wide p4

    .line 101669
    cmp-long v0, p4, v4

    if-nez v0, :cond_0

    .line 101670
    const/4 v0, 0x0

    return-object v0

    .line 101671
    :cond_0
    iget v3, p1, Lcom/facebook/ads/redexgen/X/oL;->A00:I

    .line 101672
    .local v2, "periodIndex":I
    invoke-virtual {p0, v3, p2}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0H(ILcom/facebook/ads/redexgen/X/oN;)Lcom/facebook/ads/redexgen/X/oN;

    .line 101673
    :goto_0
    iget v0, p1, Lcom/facebook/ads/redexgen/X/oL;->A01:I

    if-ge v3, v0, :cond_1

    iget-wide v1, p2, Lcom/facebook/ads/redexgen/X/oN;->A02:J

    cmp-long v0, v1, p4

    if-eqz v0, :cond_1

    add-int/lit8 v0, v3, 0x1

    .line 101674
    invoke-virtual {p0, v0, p2}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0H(ILcom/facebook/ads/redexgen/X/oN;)Lcom/facebook/ads/redexgen/X/oN;

    move-result-object v0

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/oN;->A02:J

    cmp-long v0, v1, p4

    if-gtz v0, :cond_1

    .line 101675
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 101676
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v3, p2, v0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0I(ILcom/facebook/ads/redexgen/X/oN;Z)Lcom/facebook/ads/redexgen/X/oN;

    .line 101677
    iget-wide v0, p2, Lcom/facebook/ads/redexgen/X/oN;->A02:J

    sub-long/2addr p4, v0

    .line 101678
    .local v3, "periodPositionUs":J
    iget-wide v1, p2, Lcom/facebook/ads/redexgen/X/oN;->A01:J

    cmp-long v0, v1, v4

    if-eqz v0, :cond_2

    .line 101679
    iget-wide v2, p2, Lcom/facebook/ads/redexgen/X/oN;->A01:J

    sget-object v1, Lcom/facebook/ads/androidx/media3/common/Timeline;->A00:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x32

    if-eq v1, v0, :cond_3

    sget-object v4, Lcom/facebook/ads/androidx/media3/common/Timeline;->A00:[Ljava/lang/String;

    const-string v1, "slEcDLMOMSnRw8lzrIQwxe9jf9tcgTic"

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const-wide/16 v0, 0x1

    sub-long/2addr v2, v0

    invoke-static {p4, p5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p4

    .line 101680
    :cond_2
    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 101681
    .end local v3    # "periodPositionUs":J
    .local v0, "periodPositionUs":J
    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/oN;->A04:Ljava/lang/Object;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0H(ILcom/facebook/ads/redexgen/X/oN;)Lcom/facebook/ads/redexgen/X/oN;
    .locals 1

    .line 101682
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0I(ILcom/facebook/ads/redexgen/X/oN;Z)Lcom/facebook/ads/redexgen/X/oN;

    move-result-object v0

    return-object v0
.end method

.method public abstract A0I(ILcom/facebook/ads/redexgen/X/oN;Z)Lcom/facebook/ads/redexgen/X/oN;
.end method

.method public A0J(Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/oN;)Lcom/facebook/ads/redexgen/X/oN;
    .locals 2

    .line 101683
    invoke-virtual {p0, p1}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0A(Ljava/lang/Object;)I

    move-result v1

    const/4 v0, 0x1

    invoke-virtual {p0, v1, p2, v0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0I(ILcom/facebook/ads/redexgen/X/oN;Z)Lcom/facebook/ads/redexgen/X/oN;

    move-result-object v0

    return-object v0
.end method

.method public final A0K(ILcom/facebook/ads/redexgen/X/oL;)Lcom/facebook/ads/redexgen/X/oL;
    .locals 2

    .line 101684
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0L(ILcom/facebook/ads/redexgen/X/oL;J)Lcom/facebook/ads/redexgen/X/oL;

    move-result-object v0

    return-object v0
.end method

.method public abstract A0L(ILcom/facebook/ads/redexgen/X/oL;J)Lcom/facebook/ads/redexgen/X/oL;
.end method

.method public abstract A0M(I)Ljava/lang/Object;
.end method

.method public final A0N()Z
    .locals 1

    .line 101685
    invoke-virtual {p0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A07()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0O(ILcom/facebook/ads/redexgen/X/oN;Lcom/facebook/ads/redexgen/X/oL;IZ)Z
    .locals 2

    .line 101686
    invoke-virtual/range {p0 .. p5}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A09(ILcom/facebook/ads/redexgen/X/oN;Lcom/facebook/ads/redexgen/X/oL;IZ)I

    move-result v1

    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 9

    .line 101687
    const/4 v5, 0x1

    if-ne p0, p1, :cond_0

    .line 101688
    return v5

    .line 101689
    :cond_0
    instance-of v0, p1, Lcom/facebook/ads/androidx/media3/common/Timeline;

    const/4 v4, 0x0

    if-nez v0, :cond_1

    .line 101690
    return v4

    .line 101691
    :cond_1
    check-cast p1, Lcom/facebook/ads/androidx/media3/common/Timeline;

    .line 101692
    .local v1, "other":Lcom/facebook/ads/androidx/media3/common/Timeline;
    invoke-virtual {p1}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A07()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A07()I

    move-result v0

    if-ne v1, v0, :cond_2

    invoke-virtual {p1}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A06()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A06()I

    move-result v0

    if-eq v1, v0, :cond_3

    .line 101693
    .end local v3
    .end local v4
    .end local v5
    .end local v6
    .end local v7
    .end local v8
    :cond_2
    return v4

    .line 101694
    :cond_3
    new-instance v8, Lcom/facebook/ads/redexgen/X/oL;

    invoke-direct {v8}, Lcom/facebook/ads/redexgen/X/oL;-><init>()V

    .line 101695
    .local v3, "window":Lcom/facebook/ads/redexgen/X/oL;
    new-instance v7, Lcom/facebook/ads/redexgen/X/oN;

    invoke-direct {v7}, Lcom/facebook/ads/redexgen/X/oN;-><init>()V

    .line 101696
    .local v4, "period":Lcom/facebook/ads/redexgen/X/oN;
    new-instance v3, Lcom/facebook/ads/redexgen/X/oL;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/oL;-><init>()V

    .line 101697
    .local v5, "otherWindow":Lcom/facebook/ads/redexgen/X/oL;
    new-instance v6, Lcom/facebook/ads/redexgen/X/oN;

    invoke-direct {v6}, Lcom/facebook/ads/redexgen/X/oN;-><init>()V

    .line 101698
    .local v6, "otherPeriod":Lcom/facebook/ads/redexgen/X/oN;
    const/4 v2, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A07()I

    move-result v0

    if-ge v2, v0, :cond_5

    .line 101699
    invoke-virtual {p0, v2, v8}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0K(ILcom/facebook/ads/redexgen/X/oL;)Lcom/facebook/ads/redexgen/X/oL;

    move-result-object v1

    invoke-virtual {p1, v2, v3}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0K(ILcom/facebook/ads/redexgen/X/oL;)Lcom/facebook/ads/redexgen/X/oL;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/oL;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 101700
    return v4

    .line 101701
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 101702
    .end local v7    # "i":I
    :cond_5
    const/4 v3, 0x0

    .restart local v7    # "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A06()I

    move-result v0

    if-ge v3, v0, :cond_8

    .line 101703
    invoke-virtual {p0, v3, v7, v5}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0I(ILcom/facebook/ads/redexgen/X/oN;Z)Lcom/facebook/ads/redexgen/X/oN;

    move-result-object v1

    .line 101704
    invoke-virtual {p1, v3, v6, v5}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0I(ILcom/facebook/ads/redexgen/X/oN;Z)Lcom/facebook/ads/redexgen/X/oN;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/oN;->equals(Ljava/lang/Object;)Z

    move-result v8

    sget-object v1, Lcom/facebook/ads/androidx/media3/common/Timeline;->A00:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xb

    if-eq v1, v0, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_6
    sget-object v2, Lcom/facebook/ads/androidx/media3/common/Timeline;->A00:[Ljava/lang/String;

    const-string v1, "LCXdoHEXleHtD1UyLVprjOGqC7qnADXU"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "np8LEsRhRemsbbWWIjAQc1GjKbBRdfRS"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-nez v8, :cond_7

    .line 101705
    return v4

    .line 101706
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 101707
    .end local v7    # "i":I
    :cond_8
    invoke-virtual {p0, v5}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0B(Z)I

    move-result v3

    .line 101708
    .local v7, "windowIndex":I
    invoke-virtual {p1, v5}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0B(Z)I

    move-result v0

    if-eq v3, v0, :cond_9

    .line 101709
    return v4

    .line 101710
    :cond_9
    invoke-virtual {p0, v5}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0C(Z)I

    move-result v2

    .line 101711
    .local v8, "lastWindowIndex":I
    invoke-virtual {p1, v5}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0C(Z)I

    move-result v0

    if-eq v2, v0, :cond_a

    .line 101712
    return v4

    .line 101713
    :cond_a
    :goto_2
    if-eq v3, v2, :cond_c

    .line 101714
    invoke-virtual {p0, v3, v4, v5}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A08(IIZ)I

    move-result v1

    .line 101715
    .local p0, "nextWindowIndex":I
    invoke-virtual {p1, v3, v4, v5}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A08(IIZ)I

    move-result v0

    if-eq v1, v0, :cond_b

    .line 101716
    return v4

    .line 101717
    :cond_b
    move v3, v1

    .line 101718
    .end local p0    # "nextWindowIndex":I
    goto :goto_2

    .line 101719
    :cond_c
    return v5
.end method

.method public final hashCode()I
    .locals 5

    .line 101720
    new-instance v3, Lcom/facebook/ads/redexgen/X/oL;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/oL;-><init>()V

    .line 101721
    .local v0, "window":Lcom/facebook/ads/redexgen/X/oL;
    new-instance v4, Lcom/facebook/ads/redexgen/X/oN;

    invoke-direct {v4}, Lcom/facebook/ads/redexgen/X/oN;-><init>()V

    .line 101722
    .local v1, "period":Lcom/facebook/ads/redexgen/X/oN;
    const/4 v0, 0x7

    .line 101723
    .local v2, "result":I
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A07()I

    move-result v0

    add-int/2addr v2, v0

    .line 101724
    .end local v2    # "result":I
    .local v3, "result":I
    const/4 v1, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A07()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 101725
    mul-int/lit8 v2, v2, 0x1f

    invoke-virtual {p0, v1, v3}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0K(ILcom/facebook/ads/redexgen/X/oL;)Lcom/facebook/ads/redexgen/X/oL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/oL;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    .line 101726
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101727
    .end local v2    # "i":I
    :cond_0
    mul-int/lit8 v3, v2, 0x1f

    invoke-virtual {p0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A06()I

    move-result v0

    add-int/2addr v3, v0

    .line 101728
    .end local v3    # "result":I
    .local v2, "result":I
    const/4 v1, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A06()I

    move-result v0

    const/4 v2, 0x1

    if-ge v1, v0, :cond_1

    .line 101729
    mul-int/lit8 v3, v3, 0x1f

    invoke-virtual {p0, v1, v4, v2}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0I(ILcom/facebook/ads/redexgen/X/oN;Z)Lcom/facebook/ads/redexgen/X/oN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/oN;->hashCode()I

    move-result v0

    add-int/2addr v3, v0

    .line 101730
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 101731
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {p0, v2}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0B(Z)I

    move-result v1

    .line 101732
    .local v3, "windowIndex":I
    :goto_2
    const/4 v0, -0x1

    if-eq v1, v0, :cond_2

    .line 101733
    mul-int/lit8 v3, v3, 0x1f

    add-int/2addr v3, v1

    .line 101734
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A08(IIZ)I

    move-result v1

    goto :goto_2

    .line 101735
    .end local v3    # "windowIndex":I
    :cond_2
    return v3
.end method
