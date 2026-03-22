.class public Lcom/facebook/ads/redexgen/X/lv;
.super Ljava/util/AbstractMap;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/lu;,
        Lcom/facebook/ads/redexgen/X/B5;,
        Lcom/facebook/ads/redexgen/X/lr;,
        Lcom/facebook/ads/redexgen/X/lt;,
        Lcom/facebook/ads/redexgen/X/ls;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static A09:[B

.field public static A0A:[Ljava/lang/String;

.field public static final A0B:Ljava/lang/Object;


# instance fields
.field public transient A00:[I
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public transient A01:[Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public transient A02:[Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public transient A03:I

.field public transient A04:I

.field public transient A05:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public transient A06:Ljava/util/Collection;
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public transient A07:Ljava/util/Set;
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public transient A08:Ljava/util/Set;
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3138
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "wSivjbfpZ5vyyNQvPGO2"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "feAeK30V825ODXthr2nXiZ2IyDp7foTM"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "DkUlp4YVWOkxqgis7dBpeo68CZmBo3n0"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "aa93WRLI7l2jdXj6upMcNohuPuXZSHnj"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "yd6MpWWB34WJL2xwsTp1Hrf9QPnPIJjU"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "QxuCDFa1e2lEwJ6Nl0AGtIVp0Ykbd3"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "6Mqvrbexx8eO9W"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "SxE34IM9tKvZCcEi8I123n5xI40gl8"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/lv;->A0A:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/lv;->A0M()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/lv;->A0B:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 97415
    .local p0, "this":Lcom/facebook/ads/redexgen/X/lv;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 97416
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/lv;->A0l(I)V

    .line 97417
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expectedSize"
        }
    .end annotation

    .line 97418
    .local p0, "this":Lcom/facebook/ads/redexgen/X/lv;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 97419
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/lv;->A0l(I)V

    .line 97420
    return-void
.end method

.method private A00()I
    .locals 2

    .line 97421
    .local p0, "this":Lcom/facebook/ads/redexgen/X/lv;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lv;->A03:I

    and-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x1

    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    return v0
.end method

.method private A01(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 97422
    .local p0, "this":Lcom/facebook/ads/redexgen/X/lv;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/lv;->A0T()[I

    move-result-object v0

    aget v0, v0, p1

    return v0
.end method

.method private A02(IIII)I
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "oldMask",
            "newCapacity",
            "targetHash",
            "targetEntryIndex"
        }
    .end annotation

    .line 97423
    .local p2, "this":Lcom/facebook/ads/redexgen/X/lv;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    move-object v9, p0

    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/ly;->A07(I)Ljava/lang/Object;

    move-result-object v8

    .line 97424
    .local v2, "newTable":Ljava/lang/Object;
    add-int/lit8 v10, p2, -0x1

    .line 97425
    .local v3, "newMask":I
    if-eqz p4, :cond_0

    .line 97426
    and-int/2addr p3, v10

    add-int/lit8 v0, p4, 0x1

    invoke-static {v8, p3, v0}, Lcom/facebook/ads/redexgen/X/ly;->A0B(Ljava/lang/Object;II)V

    .line 97427
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/lv;->A0C()Ljava/lang/Object;

    move-result-object v11

    .line 97428
    .local v4, "oldTable":Ljava/lang/Object;
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/lv;->A0T()[I

    move-result-object v7

    .line 97429
    .local v5, "entries":[I
    const/4 v6, 0x0

    .local v6, "oldTableIndex":I
    :goto_0
    if-gt v6, p1, :cond_2

    .line 97430
    invoke-static {v11, v6}, Lcom/facebook/ads/redexgen/X/ly;->A05(Ljava/lang/Object;I)I

    move-result v5

    .line 97431
    .local v7, "oldNext":I
    :goto_1
    if-eqz v5, :cond_1

    .line 97432
    add-int/lit8 v4, v5, -0x1

    .line 97433
    .local v8, "entryIndex":I
    aget v3, v7, v4

    .line 97434
    .local v9, "oldEntry":I
    invoke-static {v3, p1}, Lcom/facebook/ads/redexgen/X/ly;->A02(II)I

    move-result v2

    or-int/2addr v2, v6

    .line 97435
    .local v10, "hash":I
    and-int v1, v2, v10

    .line 97436
    .local v11, "newTableIndex":I
    invoke-static {v8, v1}, Lcom/facebook/ads/redexgen/X/ly;->A05(Ljava/lang/Object;I)I

    move-result v0

    .line 97437
    .local p0, "newNext":I
    invoke-static {v8, v1, v5}, Lcom/facebook/ads/redexgen/X/ly;->A0B(Ljava/lang/Object;II)V

    .line 97438
    invoke-static {v2, v0, v10}, Lcom/facebook/ads/redexgen/X/ly;->A04(III)I

    move-result v0

    aput v0, v7, v4

    .line 97439
    invoke-static {v3, p1}, Lcom/facebook/ads/redexgen/X/ly;->A03(II)I

    move-result v5

    .line 97440
    .end local v8    # "entryIndex":I
    .end local v9    # "oldEntry":I
    .end local v10    # "hash":I
    .end local v11    # "newTableIndex":I
    .end local p0    # "newNext":I
    goto :goto_1

    .line 97441
    .end local v7    # "oldNext":I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 97442
    .end local v6    # "oldTableIndex":I
    :cond_2
    iput-object v8, v9, Lcom/facebook/ads/redexgen/X/lv;->A05:Ljava/lang/Object;

    .line 97443
    invoke-direct {p0, v10}, Lcom/facebook/ads/redexgen/X/lv;->A0O(I)V

    .line 97444
    return v10
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/lv;)I
    .locals 0

    .line 97445
    iget p0, p0, Lcom/facebook/ads/redexgen/X/lv;->A03:I

    return p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/lv;)I
    .locals 2

    .line 97446
    iget v1, p0, Lcom/facebook/ads/redexgen/X/lv;->A04:I

    add-int/lit8 v0, v1, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lv;->A04:I

    return v1
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/lv;)I
    .locals 0

    .line 97447
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/lv;->A00()I

    move-result p0

    return p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/lv;Ljava/lang/Object;)I
    .locals 0

    .line 97448
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/lv;->A07(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private A07(Ljava/lang/Object;)I
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 97449
    .local p2, "this":Lcom/facebook/ads/redexgen/X/lv;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lv;->A0p()Z

    move-result v0

    const/4 v5, -0x1

    if-eqz v0, :cond_0

    .line 97450
    return v5

    .line 97451
    :cond_0
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/mU;->A02(Ljava/lang/Object;)I

    move-result v2

    .line 97452
    .local v0, "hash":I
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/lv;->A00()I

    move-result v4

    .line 97453
    .local v2, "mask":I
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/lv;->A0C()Ljava/lang/Object;

    move-result-object v1

    and-int v0, v2, v4

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/ly;->A05(Ljava/lang/Object;I)I

    move-result v0

    .line 97454
    .local v3, "next":I
    if-nez v0, :cond_1

    .line 97455
    return v5

    .line 97456
    :cond_1
    invoke-static {v2, v4}, Lcom/facebook/ads/redexgen/X/ly;->A02(II)I

    move-result v3

    .line 97457
    .local v4, "hashPrefix":I
    :cond_2
    add-int/lit8 v2, v0, -0x1

    .line 97458
    .local v5, "entryIndex":I
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/lv;->A01(I)I

    move-result v1

    .line 97459
    .local p0, "entry":I
    invoke-static {v1, v4}, Lcom/facebook/ads/redexgen/X/ly;->A02(II)I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 97460
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/lv;->A0E(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/BX;->A01(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 97461
    return v2

    .line 97462
    :cond_3
    invoke-static {v1, v4}, Lcom/facebook/ads/redexgen/X/ly;->A03(II)I

    move-result v0

    .line 97463
    .end local v5    # "entryIndex":I
    .end local p0    # "entry":I
    if-nez v0, :cond_2

    .line 97464
    return v5
.end method

.method private final A08()Lcom/facebook/ads/redexgen/X/lr;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 97465
    .local p0, "this":Lcom/facebook/ads/redexgen/X/lv;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/lr;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/lr;-><init>(Lcom/facebook/ads/redexgen/X/lv;)V

    return-object v0
.end method

.method private final A09()Lcom/facebook/ads/redexgen/X/lt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 97466
    .local p0, "this":Lcom/facebook/ads/redexgen/X/lv;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/lt;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/lt;-><init>(Lcom/facebook/ads/redexgen/X/lv;)V

    return-object v0
.end method

.method private final A0A()Lcom/facebook/ads/redexgen/X/lu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 97467
    .local p0, "this":Lcom/facebook/ads/redexgen/X/lv;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/lu;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/lu;-><init>(Lcom/facebook/ads/redexgen/X/lv;)V

    return-object v0
.end method

.method public static A0B(I)Lcom/facebook/ads/redexgen/X/lv;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expectedSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/facebook/ads/redexgen/X/lv<",
            "TK;TV;>;"
        }
    .end annotation

    .line 97468
    new-instance v0, Lcom/facebook/ads/redexgen/X/lv;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/lv;-><init>(I)V

    return-object v0
.end method

.method private A0C()Ljava/lang/Object;
    .locals 1

    .line 97469
    .local p0, "this":Lcom/facebook/ads/redexgen/X/lv;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lv;->A05:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic A0D()Ljava/lang/Object;
    .locals 1

    .line 97470
    sget-object v0, Lcom/facebook/ads/redexgen/X/lv;->A0B:Ljava/lang/Object;

    return-object v0
.end method

.method private A0E(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .line 97471
    .local p0, "this":Lcom/facebook/ads/redexgen/X/lv;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/lv;->A0V()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method private A0F(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 97472
    .local p0, "this":Lcom/facebook/ads/redexgen/X/lv;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/lv;->A0W()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public static synthetic A0G(Lcom/facebook/ads/redexgen/X/lv;)Ljava/lang/Object;
    .locals 0

    .line 97473
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/lv;->A0C()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A0H(Lcom/facebook/ads/redexgen/X/lv;I)Ljava/lang/Object;
    .locals 0

    .line 97474
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/lv;->A0E(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A0I(Lcom/facebook/ads/redexgen/X/lv;I)Ljava/lang/Object;
    .locals 0

    .line 97475
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/lv;->A0F(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A0J(Lcom/facebook/ads/redexgen/X/lv;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 97476
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/lv;->A0K(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private A0K(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 97477
    .local p0, "this":Lcom/facebook/ads/redexgen/X/lv;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lv;->A0p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97478
    sget-object v0, Lcom/facebook/ads/redexgen/X/lv;->A0B:Ljava/lang/Object;

    return-object v0

    .line 97479
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/lv;->A00()I

    move-result v3

    .line 97480
    .local v0, "mask":I
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/lv;->A0C()Ljava/lang/Object;

    move-result-object v4

    .line 97481
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/lv;->A0T()[I

    move-result-object v5

    .line 97482
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/lv;->A0V()[Ljava/lang/Object;

    move-result-object v6

    .line 97483
    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/ly;->A06(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;[I[Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v2

    .line 97484
    .local v1, "index":I
    const/4 v0, -0x1

    if-ne v2, v0, :cond_2

    .line 97485
    sget-object v3, Lcom/facebook/ads/redexgen/X/lv;->A0B:Ljava/lang/Object;

    sget-object v2, Lcom/facebook/ads/redexgen/X/lv;->A0A:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x5

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/lv;->A0A:[Ljava/lang/String;

    const-string v1, "F8ZzCx46VEt3o6V5ZJCH"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "RA5kHayy5QpfLDjl1dNEtk1yryeED7Tz"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-object v3

    .line 97486
    :cond_2
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/lv;->A0F(I)Ljava/lang/Object;

    move-result-object v1

    .line 97487
    .local v2, "oldValue":Ljava/lang/Object;
    invoke-virtual {p0, v2, v3}, Lcom/facebook/ads/redexgen/X/lv;->A0n(II)V

    .line 97488
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lv;->A04:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lv;->A04:I

    .line 97489
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lv;->A0j()V

    .line 97490
    return-object v1
.end method

.method public static A0L(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/lv;->A09:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x34

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0M()V
    .locals 3

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/lv;->A09:[B

    sget-object v2, Lcom/facebook/ads/redexgen/X/lv;->A0A:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/lv;->A0A:[Ljava/lang/String;

    const-string v1, "IoFO5J0AFYg4y0jUjWJp7QnfwHFEsl"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "MD8kR9gChUuO1ad3jnDINjX3f2IxRH"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :array_0
    .array-data 1
        -0x12t
        0x1ft
        0x1ft
        0xet
        0x26t
        0x20t
        -0x33t
        0xet
        0x19t
        0x1ft
        0x12t
        0xet
        0x11t
        0x26t
        -0x33t
        0xet
        0x19t
        0x19t
        0x1ct
        0x10t
        0xet
        0x21t
        0x12t
        0x11t
        -0x77t
        -0x44t
        -0x4ct
        -0x57t
        -0x59t
        -0x48t
        -0x57t
        -0x58t
        0x64t
        -0x49t
        -0x53t
        -0x42t
        -0x57t
        0x64t
        -0x4ft
        -0x47t
        -0x49t
        -0x48t
        0x64t
        -0x5at
        -0x57t
        0x64t
        -0x7et
        -0x7ft
        0x64t
        0x74t
        -0x6ct
        -0x47t
        -0x3ft
        -0x54t
        -0x49t
        -0x4ct
        -0x51t
        0x6bt
        -0x42t
        -0x4ct
        -0x3bt
        -0x50t
        -0x7bt
        0x6bt
    .end array-data
.end method

.method private A0N(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newSize"
        }
    .end annotation

    .line 97491
    .local p0, "this":Lcom/facebook/ads/redexgen/X/lv;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/lv;->A0T()[I

    move-result-object v0

    array-length v2, v0

    .line 97492
    .local v0, "entriesSize":I
    if-le p1, v2, :cond_0

    .line 97493
    ushr-int/lit8 v1, v2, 0x1

    .line 97494
    const/4 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, v2

    or-int/2addr v1, v0

    const v0, 0x3fffffff    # 1.9999999f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 97495
    .local v1, "newCapacity":I
    if-eq v0, v2, :cond_0

    .line 97496
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/lv;->A0m(I)V

    .line 97497
    .end local v1    # "newCapacity":I
    :cond_0
    return-void
.end method

.method private A0O(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mask"
        }
    .end annotation

    .line 97498
    .local p0, "this":Lcom/facebook/ads/redexgen/X/lv;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v2, v0, 0x20

    .line 97499
    .local v0, "hashTableBits":I
    iget v1, p0, Lcom/facebook/ads/redexgen/X/lv;->A03:I

    .line 97500
    const/16 v0, 0x1f

    invoke-static {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/ly;->A04(III)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lv;->A03:I

    .line 97501
    return-void
.end method

.method private A0P(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "value"
        }
    .end annotation

    .line 97502
    .local p0, "this":Lcom/facebook/ads/redexgen/X/lv;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/lv;->A0T()[I

    move-result-object v0

    aput p2, v0, p1

    .line 97503
    return-void
.end method

.method private A0Q(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;)V"
        }
    .end annotation

    .line 97504
    .local p0, "this":Lcom/facebook/ads/redexgen/X/lv;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/lv;->A0V()[Ljava/lang/Object;

    move-result-object v0

    aput-object p2, v0, p1

    .line 97505
    return-void
.end method

.method private A0R(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    .line 97506
    .local p0, "this":Lcom/facebook/ads/redexgen/X/lv;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/lv;->A0W()[Ljava/lang/Object;

    move-result-object v0

    aput-object p2, v0, p1

    .line 97507
    return-void
.end method

.method public static synthetic A0S(Lcom/facebook/ads/redexgen/X/lv;ILjava/lang/Object;)V
    .locals 0

    .line 97508
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/lv;->A0R(ILjava/lang/Object;)V

    return-void
.end method

.method private A0T()[I
    .locals 1

    .line 97509
    .local p0, "this":Lcom/facebook/ads/redexgen/X/lv;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lv;->A00:[I

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public static synthetic A0U(Lcom/facebook/ads/redexgen/X/lv;)[I
    .locals 0

    .line 97510
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/lv;->A0T()[I

    move-result-object p0

    return-object p0
.end method

.method private A0V()[Ljava/lang/Object;
    .locals 1

    .line 97511
    .local p0, "this":Lcom/facebook/ads/redexgen/X/lv;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lv;->A01:[Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method private A0W()[Ljava/lang/Object;
    .locals 1

    .line 97512
    .local p0, "this":Lcom/facebook/ads/redexgen/X/lv;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lv;->A02:[Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic A0X(Lcom/facebook/ads/redexgen/X/lv;)[Ljava/lang/Object;
    .locals 0

    .line 97513
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/lv;->A0V()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A0Y(Lcom/facebook/ads/redexgen/X/lv;)[Ljava/lang/Object;
    .locals 0

    .line 97514
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/lv;->A0W()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 97673
    .local v4, "this":Lcom/facebook/ads/redexgen/X/lv;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 97674
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v4

    .line 97675
    .local v0, "elementCount":I
    if-ltz v4, :cond_1

    .line 97676
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/lv;->A0l(I)V

    .line 97677
    const/4 v2, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 97678
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 97679
    .local v2, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 97680
    .local v3, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/lv;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97681
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    .end local v3    # "value":Ljava/lang/Object;, "TV;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 97682
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 97683
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x32

    const/16 v1, 0xe

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lv;->A0L(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/InvalidObjectException;

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97692
    .local v3, "this":Lcom/facebook/ads/redexgen/X/lv;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 97693
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lv;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 97694
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lv;->A0d()Ljava/util/Iterator;

    move-result-object v4

    .line 97695
    .local v0, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/lv;->A0A:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/lv;->A0A:[Ljava/lang/String;

    const-string v1, "lZkXti1hHETGLNP2mJng"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "UqMxjQlbiD6IC1mODYXJWocLTdBCXsJ0"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    .line 97696
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 97697
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 97698
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 97699
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    goto :goto_0

    .line 97700
    :cond_1
    return-void
.end method


# virtual methods
.method public A0Z()I
    .locals 4

    .line 97515
    .local v3, "this":Lcom/facebook/ads/redexgen/X/lv;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lv;->A0p()Z

    move-result v3

    const/4 v2, 0x0

    const/16 v1, 0x18

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lv;->A0L(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/jA;->A0F(ZLjava/lang/Object;)V

    .line 97516
    iget v2, p0, Lcom/facebook/ads/redexgen/X/lv;->A03:I

    .line 97517
    .local v0, "expectedSize":I
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/ly;->A01(I)I

    move-result v1

    .line 97518
    .local v1, "buckets":I
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/ly;->A07(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lv;->A05:Ljava/lang/Object;

    .line 97519
    add-int/lit8 v0, v1, -0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/lv;->A0O(I)V

    .line 97520
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lv;->A00:[I

    .line 97521
    new-array v0, v2, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lv;->A01:[Ljava/lang/Object;

    .line 97522
    new-array v0, v2, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lv;->A02:[Ljava/lang/Object;

    .line 97523
    return v2
.end method

.method public A0a()I
    .locals 1

    .line 97524
    .local p0, "this":Lcom/facebook/ads/redexgen/X/lv;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lv;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public A0b(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entryIndex"
        }
    .end annotation

    .line 97525
    .local p0, "this":Lcom/facebook/ads/redexgen/X/lv;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    add-int/lit8 v1, p1, 0x1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/lv;->A04:I

    if-ge v1, v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public A0c(II)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "indexBeforeRemove",
            "indexRemoved"
        }
    .end annotation

    .line 97526
    .local p0, "this":Lcom/facebook/ads/redexgen/X/lv;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    add-int/lit8 v0, p1, -0x1

    return v0
.end method

.method public final A0d()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 97527
    .local p1, "this":Lcom/facebook/ads/redexgen/X/lv;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lv;->A0h()Ljava/util/Map;

    move-result-object v0

    .line 97528
    .local v0, "delegate":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 97529
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 97530
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/B7;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/B7;-><init>(Lcom/facebook/ads/redexgen/X/lv;)V

    return-object v0
.end method

.method public final A0e()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 97531
    .local v2, "this":Lcom/facebook/ads/redexgen/X/lv;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lv;->A0h()Ljava/util/Map;

    move-result-object v0

    .line 97532
    .local v0, "delegate":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-eqz v0, :cond_1

    .line 97533
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/lv;->A0A:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/lv;->A0A:[Ljava/lang/String;

    const-string v1, "GopoyTSNvP2uUGwCw8coQru7y5edTQ0w"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-object v3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 97534
    :cond_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/B9;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/B9;-><init>(Lcom/facebook/ads/redexgen/X/lv;)V

    return-object v0
.end method

.method public final A0f()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 97535
    .local p1, "this":Lcom/facebook/ads/redexgen/X/lv;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lv;->A0h()Ljava/util/Map;

    move-result-object v0

    .line 97536
    .local v0, "delegate":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 97537
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 97538
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/B6;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/B6;-><init>(Lcom/facebook/ads/redexgen/X/lv;)V

    return-object v0
.end method

.method public A0g()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 97539
    .local p0, "this":Lcom/facebook/ads/redexgen/X/lv;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/lv;->A00()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/lv;->A0i(I)Ljava/util/Map;

    move-result-object v3

    .line 97540
    .local v0, "newDelegate":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lv;->A0a()I

    move-result v2

    .local v1, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 97541
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/lv;->A0E(I)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/lv;->A0F(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97542
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/lv;->A0b(I)I

    move-result v2

    goto :goto_0

    .line 97543
    .end local v1    # "i":I
    :cond_0
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/lv;->A05:Ljava/lang/Object;

    .line 97544
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lv;->A00:[I

    .line 97545
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lv;->A01:[Ljava/lang/Object;

    .line 97546
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lv;->A02:[Ljava/lang/Object;

    .line 97547
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lv;->A0j()V

    .line 97548
    return-object v3
.end method

.method public final A0h()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 97549
    .local p0, "this":Lcom/facebook/ads/redexgen/X/lv;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lv;->A05:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 97550
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lv;->A05:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    return-object v0

    .line 97551
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public A0i(I)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tableSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 97552
    .local p0, "this":Lcom/facebook/ads/redexgen/X/lv;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    const/high16 v1, 0x3f800000    # 1.0f

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p1, v1}, Ljava/util/LinkedHashMap;-><init>(IF)V

    return-object v0
.end method

.method public final A0j()V
    .locals 1

    .line 97553
    .local p0, "this":Lcom/facebook/ads/redexgen/X/lv;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lv;->A03:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lv;->A03:I

    .line 97554
    return-void
.end method

.method public A0k(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 97555
    .local p0, "this":Lcom/facebook/ads/redexgen/X/lv;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    return-void
.end method

.method public A0l(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expectedSize"
        }
    .end annotation

    .line 97556
    .local v3, "this":Lcom/facebook/ads/redexgen/X/lv;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    const/4 v4, 0x1

    if-ltz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    const/16 v2, 0x18

    const/16 v1, 0x1a

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lv;->A0L(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/jA;->A0E(ZLjava/lang/Object;)V

    .line 97557
    const v0, 0x3fffffff    # 1.9999999f

    invoke-static {p1, v4, v0}, Lcom/facebook/ads/redexgen/X/AD;->A02(III)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lv;->A03:I

    .line 97558
    return-void

    .line 97559
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public A0m(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newCapacity"
        }
    .end annotation

    .line 97560
    .local p0, "this":Lcom/facebook/ads/redexgen/X/lv;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/lv;->A0T()[I

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lv;->A00:[I

    .line 97561
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/lv;->A0V()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lv;->A01:[Ljava/lang/Object;

    .line 97562
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/lv;->A0W()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lv;->A02:[Ljava/lang/Object;

    .line 97563
    return-void
.end method

.method public A0n(II)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dstIndex",
            "mask"
        }
    .end annotation

    .line 97564
    .local p3, "this":Lcom/facebook/ads/redexgen/X/lv;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/lv;->A0C()Ljava/lang/Object;

    move-result-object v3

    .line 97565
    .local v0, "table":Ljava/lang/Object;
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/lv;->A0T()[I

    move-result-object v8

    .line 97566
    .local v1, "entries":[I
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/lv;->A0V()[Ljava/lang/Object;

    move-result-object v7

    .line 97567
    .local v2, "keys":[Ljava/lang/Object;
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/lv;->A0W()[Ljava/lang/Object;

    move-result-object v2

    .line 97568
    .local v3, "values":[Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lv;->size()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    .line 97569
    .local v4, "srcIndex":I
    const/4 v6, 0x0

    const/4 v1, 0x0

    if-ge p1, v4, :cond_1

    .line 97570
    aget-object v5, v7, v4

    .line 97571
    .local v7, "key":Ljava/lang/Object;
    aput-object v5, v7, p1

    .line 97572
    aget-object v0, v2, v4

    aput-object v0, v2, p1

    .line 97573
    aput-object v1, v7, v4

    .line 97574
    aput-object v1, v2, v4

    .line 97575
    aget v0, v8, v4

    aput v0, v8, p1

    sget-object v2, Lcom/facebook/ads/redexgen/X/lv;->A0A:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    .line 97576
    sget-object v2, Lcom/facebook/ads/redexgen/X/lv;->A0A:[Ljava/lang/String;

    const-string v1, "JpifJf2kbZdDbZEcWvjQntDjOJA2HcxY"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    aput v6, v8, v4

    .line 97577
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/mU;->A02(Ljava/lang/Object;)I

    move-result v1

    and-int/2addr v1, p2

    .line 97578
    .local v8, "tableIndex":I
    invoke-static {v3, v1}, Lcom/facebook/ads/redexgen/X/ly;->A05(Ljava/lang/Object;I)I

    move-result v2

    .line 97579
    .local v5, "next":I
    add-int/lit8 v0, v4, 0x1

    .line 97580
    .local p0, "srcNext":I
    if-ne v2, v0, :cond_0

    .line 97581
    add-int/lit8 v0, p1, 0x1

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/ly;->A0B(Ljava/lang/Object;II)V

    .line 97582
    :goto_0
    return-void

    .line 97583
    :cond_0
    add-int/lit8 v4, v2, -0x1

    .line 97584
    .local v6, "entryIndex":I
    aget v1, v8, v4

    .line 97585
    .local p1, "entry":I
    invoke-static {v1, p2}, Lcom/facebook/ads/redexgen/X/ly;->A03(II)I

    move-result v2

    .line 97586
    if-ne v2, v0, :cond_0

    .line 97587
    add-int/lit8 v0, p1, 0x1

    invoke-static {v1, v0, p2}, Lcom/facebook/ads/redexgen/X/ly;->A04(III)I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/lv;->A0A:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x63

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/lv;->A0A:[Ljava/lang/String;

    const-string v1, "ewyZpZbIi25h1LX0jZUdN0qrqZxWH2dV"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    aput v3, v8, v4

    goto :goto_0

    .line 97588
    :cond_1
    aput-object v1, v7, p1

    .line 97589
    aput-object v1, v2, p1

    .line 97590
    aput v6, v8, p1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public A0o(ILjava/lang/Object;Ljava/lang/Object;II)V
    .locals 1
    .param p1    # I
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "entryIndex",
            "key",
            "value",
            "hash",
            "mask"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;II)V"
        }
    .end annotation

    .line 97591
    .local p0, "this":Lcom/facebook/ads/redexgen/X/lv;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    invoke-static {p4, v0, p5}, Lcom/facebook/ads/redexgen/X/ly;->A04(III)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/lv;->A0P(II)V

    .line 97592
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/lv;->A0Q(ILjava/lang/Object;)V

    .line 97593
    invoke-direct {p0, p1, p3}, Lcom/facebook/ads/redexgen/X/lv;->A0R(ILjava/lang/Object;)V

    .line 97594
    return-void
.end method

.method public final A0p()Z
    .locals 1

    .line 97595
    .local p0, "this":Lcom/facebook/ads/redexgen/X/lv;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lv;->A05:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 6

    .line 97596
    .local p0, "this":Lcom/facebook/ads/redexgen/X/lv;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lv;->A0p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97597
    return-void

    .line 97598
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lv;->A0j()V

    .line 97599
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lv;->A0h()Ljava/util/Map;

    move-result-object v5

    .line 97600
    .local v0, "delegate":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    const/4 v4, 0x0

    const/4 v3, 0x0

    if-eqz v5, :cond_1

    .line 97601
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lv;->size()I

    move-result v2

    const/4 v1, 0x3

    const v0, 0x3fffffff    # 1.9999999f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AD;->A02(III)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lv;->A03:I

    .line 97602
    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 97603
    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/lv;->A05:Ljava/lang/Object;

    .line 97604
    iput v3, p0, Lcom/facebook/ads/redexgen/X/lv;->A04:I

    .line 97605
    :goto_0
    return-void

    .line 97606
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/lv;->A0V()[Ljava/lang/Object;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/lv;->A04:I

    invoke-static {v1, v3, v0, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 97607
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/lv;->A0W()[Ljava/lang/Object;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/lv;->A04:I

    invoke-static {v1, v3, v0, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 97608
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/lv;->A0C()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ly;->A0A(Ljava/lang/Object;)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/lv;->A0A:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x63

    if-eq v1, v0, :cond_2

    .line 97609
    sget-object v2, Lcom/facebook/ads/redexgen/X/lv;->A0A:[Ljava/lang/String;

    const-string v1, "HEGfGjMW8cX3B6hZei5dHcacBQ1QHslD"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/lv;->A0T()[I

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/lv;->A04:I

    invoke-static {v1, v3, v0, v3}, Ljava/util/Arrays;->fill([IIII)V

    .line 97610
    iput v3, p0, Lcom/facebook/ads/redexgen/X/lv;->A04:I

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 97611
    .local p1, "this":Lcom/facebook/ads/redexgen/X/lv;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lv;->A0h()Ljava/util/Map;

    move-result-object v0

    .line 97612
    .local v0, "delegate":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/lv;->A07(Ljava/lang/Object;)I

    move-result v1

    const/4 v0, -0x1

    if-eq v1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 97613
    .local p1, "this":Lcom/facebook/ads/redexgen/X/lv;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lv;->A0h()Ljava/util/Map;

    move-result-object v0

    .line 97614
    .local v0, "delegate":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 97615
    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 97616
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lv;->A04:I

    if-ge v1, v0, :cond_2

    .line 97617
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/lv;->A0F(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/BX;->A01(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97618
    const/4 v0, 0x1

    return v0

    .line 97619
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97620
    .end local v1    # "i":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 97621
    .local p0, "this":Lcom/facebook/ads/redexgen/X/lv;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lv;->A07:Ljava/util/Set;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/lv;->A08()Lcom/facebook/ads/redexgen/X/lr;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lv;->A07:Ljava/util/Set;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lv;->A07:Ljava/util/Set;

    goto :goto_0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 97622
    .local p1, "this":Lcom/facebook/ads/redexgen/X/lv;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lv;->A0h()Ljava/util/Map;

    move-result-object v0

    .line 97623
    .local v0, "delegate":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 97624
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 97625
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/lv;->A07(Ljava/lang/Object;)I

    move-result v1

    .line 97626
    .local v1, "index":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    .line 97627
    const/4 v0, 0x0

    return-object v0

    .line 97628
    :cond_1
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/lv;->A0k(I)V

    .line 97629
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/lv;->A0F(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final isEmpty()Z
    .locals 1

    .line 97630
    .local p0, "this":Lcom/facebook/ads/redexgen/X/lv;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lv;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 97631
    .local p0, "this":Lcom/facebook/ads/redexgen/X/lv;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lv;->A08:Ljava/util/Set;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/lv;->A09()Lcom/facebook/ads/redexgen/X/lt;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lv;->A08:Ljava/util/Set;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lv;->A08:Ljava/util/Set;

    goto :goto_0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 97632
    .local p4, "this":Lcom/facebook/ads/redexgen/X/lv;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    .local p5, "key":Ljava/lang/Object;, "TK;"
    .local p6, "value":Ljava/lang/Object;, "TV;"
    move-object v3, p0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lv;->A0p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97633
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lv;->A0Z()I

    .line 97634
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lv;->A0h()Ljava/util/Map;

    move-result-object v0

    .line 97635
    .local v9, "delegate":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    move-object/from16 v12, p2

    move-object/from16 v11, p1

    if-eqz v0, :cond_1

    .line 97636
    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 97637
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/lv;->A0T()[I

    move-result-object v9

    .line 97638
    .local v10, "entries":[I
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/lv;->A0V()[Ljava/lang/Object;

    move-result-object v8

    .line 97639
    .local v11, "keys":[Ljava/lang/Object;
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/lv;->A0W()[Ljava/lang/Object;

    move-result-object v7

    .line 97640
    .local v12, "values":[Ljava/lang/Object;
    iget v10, v3, Lcom/facebook/ads/redexgen/X/lv;->A04:I

    .line 97641
    .local v13, "newEntryIndex":I
    add-int/lit8 v4, v10, 0x1

    .line 97642
    .local v14, "newSize":I
    invoke-static {v11}, Lcom/facebook/ads/redexgen/X/mU;->A02(Ljava/lang/Object;)I

    move-result v13

    .line 97643
    .local p0, "hash":I
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/lv;->A00()I

    move-result v14

    .line 97644
    .local v0, "mask":I
    and-int v2, v13, v14

    .line 97645
    .local v5, "tableIndex":I
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/lv;->A0C()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/ly;->A05(Ljava/lang/Object;I)I

    move-result v0

    .line 97646
    .local v1, "next":I
    if-nez v0, :cond_4

    .line 97647
    if-le v4, v14, :cond_3

    .line 97648
    invoke-static {v14}, Lcom/facebook/ads/redexgen/X/ly;->A00(I)I

    move-result v0

    invoke-direct {v3, v14, v0, v13, v10}, Lcom/facebook/ads/redexgen/X/lv;->A02(IIII)I

    move-result v14

    .line 97649
    .end local v0    # "mask":I
    .end local v1    # "next":I
    .end local v3
    .end local v4
    .end local v5    # "tableIndex":I
    .local p1, "mask":I
    .local p3, "next":I
    :goto_0
    invoke-direct {v3, v4}, Lcom/facebook/ads/redexgen/X/lv;->A0N(I)V

    .line 97650
    move-object v9, p0

    invoke-virtual/range {v9 .. v14}, Lcom/facebook/ads/redexgen/X/lv;->A0o(ILjava/lang/Object;Ljava/lang/Object;II)V

    .line 97651
    iput v4, v3, Lcom/facebook/ads/redexgen/X/lv;->A04:I

    .line 97652
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lv;->A0j()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/lv;->A0A:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xe

    if-eq v1, v0, :cond_9

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 97653
    :cond_3
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/lv;->A0C()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v10, 0x1

    invoke-static {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/ly;->A0B(Ljava/lang/Object;II)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/lv;->A0A:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/lv;->A0A:[Ljava/lang/String;

    const-string v1, "2ZAiwLyczl80nzcVv99ytgXWx8HMLtqx"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    goto :goto_0

    .line 97654
    :cond_4
    invoke-static {v13, v14}, Lcom/facebook/ads/redexgen/X/ly;->A02(II)I

    move-result v6

    .line 97655
    .local v2, "hashPrefix":I
    const/4 v5, 0x0

    .line 97656
    .local v3, "bucketLength":I
    :cond_5
    add-int/lit8 v1, v0, -0x1

    .line 97657
    .local v4, "entryIndex":I
    .end local v1
    .local p1, "next":I
    aget v2, v9, v1

    .line 97658
    .local v1, "entry":I
    .end local v5
    .local p2, "tableIndex":I
    invoke-static {v2, v14}, Lcom/facebook/ads/redexgen/X/ly;->A02(II)I

    move-result v0

    if-ne v0, v6, :cond_6

    aget-object v0, v8, v1

    .line 97659
    invoke-static {v11, v0}, Lcom/facebook/ads/redexgen/X/BX;->A01(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 97660
    aget-object v0, v7, v1

    .line 97661
    .local v5, "oldValue":Ljava/lang/Object;, "TV;"
    aput-object v12, v7, v1

    .line 97662
    invoke-virtual {v3, v1}, Lcom/facebook/ads/redexgen/X/lv;->A0k(I)V

    .line 97663
    return-object v0

    .line 97664
    .end local v5    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_6
    invoke-static {v2, v14}, Lcom/facebook/ads/redexgen/X/ly;->A03(II)I

    move-result v0

    .line 97665
    .end local p1    # "next":I
    .local v5, "next":I
    add-int/lit8 v5, v5, 0x1

    .line 97666
    if-nez v0, :cond_5

    .line 97667
    .end local v2    # "hashPrefix":I
    .local p1, "hashPrefix":I
    const/16 v0, 0x9

    if-lt v5, v0, :cond_7

    .line 97668
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lv;->A0g()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 97669
    :cond_7
    if-le v4, v14, :cond_8

    .line 97670
    invoke-static {v14}, Lcom/facebook/ads/redexgen/X/ly;->A00(I)I

    move-result v0

    invoke-direct {v3, v14, v0, v13, v10}, Lcom/facebook/ads/redexgen/X/lv;->A02(IIII)I

    move-result v14

    goto :goto_0

    .line 97671
    :cond_8
    add-int/lit8 v0, v10, 0x1

    invoke-static {v2, v0, v14}, Lcom/facebook/ads/redexgen/X/ly;->A04(III)I

    move-result v0

    aput v0, v9, v1

    goto/16 :goto_0

    .line 97672
    :cond_9
    sget-object v2, Lcom/facebook/ads/redexgen/X/lv;->A0A:[Ljava/lang/String;

    const-string v1, "efczO3YJEcN3CoMhojB5"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "vhmQa5OnZZeWmVDY77t31AOxDsfMGclq"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 97684
    .local p1, "this":Lcom/facebook/ads/redexgen/X/lv;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lv;->A0h()Ljava/util/Map;

    move-result-object v0

    .line 97685
    .local v0, "delegate":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 97686
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 97687
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/lv;->A0K(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 97688
    .local v1, "oldValue":Ljava/lang/Object;
    sget-object v0, Lcom/facebook/ads/redexgen/X/lv;->A0B:Ljava/lang/Object;

    if-ne v1, v0, :cond_1

    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method

.method public final size()I
    .locals 1

    .line 97689
    .local p1, "this":Lcom/facebook/ads/redexgen/X/lv;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lv;->A0h()Ljava/util/Map;

    move-result-object v0

    .line 97690
    .local v0, "delegate":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lv;->A04:I

    goto :goto_0
.end method

.method public final values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 97691
    .local p0, "this":Lcom/facebook/ads/redexgen/X/lv;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lv;->A06:Ljava/util/Collection;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/lv;->A0A()Lcom/facebook/ads/redexgen/X/lu;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lv;->A06:Ljava/util/Collection;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lv;->A06:Ljava/util/Collection;

    goto :goto_0
.end method
