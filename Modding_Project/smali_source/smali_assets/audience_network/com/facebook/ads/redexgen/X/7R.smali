.class public final Lcom/facebook/ads/redexgen/X/7R;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/iw;


# annotations
.annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    value = "Exo version is final but in Meta code HeroLeastRecentlyUsedCacheEvictor extends this"
.end annotation


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;


# instance fields
.field public A00:J
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Exo version is private but in Meta code HeroLeastRecentlyUsedCacheEvictor extends this"
    .end annotation
.end field

.field public final A01:J
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Exo version is private but in Meta code HeroLeastRecentlyUsedCacheEvictor extends this"
    .end annotation
.end field

.field public final A02:Ljava/util/TreeSet;
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Exo version is private but in Meta code HeroLeastRecentlyUsedCacheEvictor extends this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lcom/facebook/ads/redexgen/X/Lx;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 434
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "jtWHdC1JS00IQCACyTEvOJEMPrvoo3Ob"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "eCCt1HwS4IToKXyi1WzLFL1R4PlgsDM4"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "yXgy4dLxj37Ni2Ba12KifyhgeRBIXCXp"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "5p7nRT0g4n3u8StY"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "28aCkGMBHBRgMUJ0i4knnGO"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "XAmyqmpuCXa4X38XkweYk7F1knbiAlXr"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "krkFdswQPRExlipS29WIEjh8hbH7SBjj"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "jb"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/7R;->A04:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/7R;->A02()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    .line 21685
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21686
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/7R;->A01:J

    .line 21687
    new-instance v1, Lcom/facebook/ads/redexgen/X/MB;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/MB;-><init>()V

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7R;->A02:Ljava/util/TreeSet;

    .line 21688
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/Lx;Lcom/facebook/ads/redexgen/X/Lx;)I
    .locals 5
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Exo version is private but in Meta code HeroLeastRecentlyUsedCacheEvictor extends this"
    .end annotation

    .line 21689
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Lx;->A00:J

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/Lx;->A00:J

    sub-long/2addr v3, v0

    .line 21690
    .local v0, "lastTouchTimestampDelta":J
    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    .line 21691
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Lx;->A02(Lcom/facebook/ads/redexgen/X/Lx;)I

    move-result v0

    return v0

    .line 21692
    :cond_0
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Lx;->A00:J

    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/Lx;->A00:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_1

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/7R;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x1c

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/7R;->A03:[B

    return-void

    :array_0
    .array-data 1
        0x2et
        0x3dt
        0x22t
        0x28t
        0x3ft
        0x8t
        0x2at
        0x28t
        0x23t
        0x2et
    .end array-data
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/Ln;J)V
    .locals 5

    .line 21693
    const/4 v2, 0x0

    const/16 v1, 0xa

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7R;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4S;->A02(Ljava/lang/String;)V

    .line 21694
    :goto_0
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/7R;->A00:J

    add-long/2addr v3, p2

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/7R;->A01:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7R;->A02:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 21695
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7R;->A02:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/Lx;

    sget-object v1, Lcom/facebook/ads/redexgen/X/7R;->A04:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x54

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/7R;->A04:[Ljava/lang/String;

    const-string v1, "DjrmhsDHxGC2SVigK1e7Rl2"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-interface {p1, v3}, Lcom/facebook/ads/redexgen/X/Ln;->AHl(Lcom/facebook/ads/redexgen/X/Lx;)V

    goto :goto_0

    .line 21696
    :cond_1
    invoke-static {}, Lcom/facebook/ads/redexgen/X/4S;->A00()V

    .line 21697
    return-void
.end method


# virtual methods
.method public final AFJ(Lcom/facebook/ads/redexgen/X/Ln;Lcom/facebook/ads/redexgen/X/Lx;)V
    .locals 4

    .line 21698
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7R;->A02:Ljava/util/TreeSet;

    invoke-virtual {v0, p2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 21699
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/7R;->A00:J

    iget-wide v0, p2, Lcom/facebook/ads/redexgen/X/Lx;->A01:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/7R;->A00:J

    .line 21700
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/7R;->A03(Lcom/facebook/ads/redexgen/X/Ln;J)V

    .line 21701
    return-void
.end method

.method public final AFK(Lcom/facebook/ads/redexgen/X/Ln;Lcom/facebook/ads/redexgen/X/Lx;)V
    .locals 4

    .line 21702
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7R;->A02:Ljava/util/TreeSet;

    invoke-virtual {v0, p2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 21703
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/7R;->A00:J

    iget-wide v0, p2, Lcom/facebook/ads/redexgen/X/Lx;->A01:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/7R;->A00:J

    .line 21704
    return-void
.end method

.method public final AFL(Lcom/facebook/ads/redexgen/X/Ln;Lcom/facebook/ads/redexgen/X/Lx;Lcom/facebook/ads/redexgen/X/Lx;)V
    .locals 0

    .line 21705
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/7R;->AFK(Lcom/facebook/ads/redexgen/X/Ln;Lcom/facebook/ads/redexgen/X/Lx;)V

    .line 21706
    invoke-virtual {p0, p1, p3}, Lcom/facebook/ads/redexgen/X/7R;->AFJ(Lcom/facebook/ads/redexgen/X/Ln;Lcom/facebook/ads/redexgen/X/Lx;)V

    .line 21707
    return-void
.end method

.method public final AFM(Lcom/facebook/ads/redexgen/X/Ln;Ljava/lang/String;JJ)V
    .locals 3

    .line 21708
    const-wide/16 v1, -0x1

    cmp-long v0, p5, v1

    if-eqz v0, :cond_0

    .line 21709
    invoke-direct {p0, p1, p5, p6}, Lcom/facebook/ads/redexgen/X/7R;->A03(Lcom/facebook/ads/redexgen/X/Ln;J)V

    .line 21710
    :cond_0
    return-void
.end method

.method public final AHz()Z
    .locals 1

    .line 21711
    const/4 v0, 0x1

    return v0
.end method
