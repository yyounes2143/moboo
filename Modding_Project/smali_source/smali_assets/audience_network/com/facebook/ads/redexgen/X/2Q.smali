.class public abstract Lcom/facebook/ads/redexgen/X/2Q;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/oi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalConfiguration"
.end annotation


# static fields
.field public static A09:[B

.field public static A0A:[Ljava/lang/String;


# instance fields
.field public final A00:Landroid/net/Uri;

.field public final A01:Lcom/facebook/ads/redexgen/X/2H;

.field public final A02:Lcom/facebook/ads/redexgen/X/2M;

.field public final A03:Ljava/lang/Object;

.field public final A04:Ljava/lang/String;

.field public final A05:Ljava/lang/String;

.field public final A06:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/androidx/media3/common/StreamKey;",
            ">;"
        }
    .end annotation
.end field

.field public final A07:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/androidx/media3/common/MediaItem$SubtitleConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public final A08:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/androidx/media3/common/MediaItem$Subtitle;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 79
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "x4YClL2ZysfVPCFZjhpW4oP0jWiK4Q3l"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "qTcDzMP2wLEx15nCuEUhgp4TY7vV"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "SIpQOLlqDgpshhwjhc8D2jgDkVzbvCX7"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "J0RaUpvVzbbvSqSgIYK8O25JdvitlZZ4"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "cm5jE18fh6qtcHu4S6QHstxeiM"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "n"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "LQDJUPwAzqbXUo9Li69tSY6YDGIQDwU"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "wUCT9e8FTOqtQKr8s0xzb6XHsL6fqF1p"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/2Q;->A0A:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/2Q;->A01()V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/2M;Lcom/facebook/ads/redexgen/X/2H;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/2M;",
            "Lcom/facebook/ads/redexgen/X/2H;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/androidx/media3/common/StreamKey;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/androidx/media3/common/MediaItem$SubtitleConfiguration;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 9764
    .local p5, "streamKeys":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/common/StreamKey;>;"
    .local p7, "subtitleConfigurations":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/common/MediaItem$SubtitleConfiguration;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9765
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2Q;->A00:Landroid/net/Uri;

    .line 9766
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/2Q;->A05:Ljava/lang/String;

    .line 9767
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/2Q;->A02:Lcom/facebook/ads/redexgen/X/2M;

    .line 9768
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/2Q;->A01:Lcom/facebook/ads/redexgen/X/2H;

    .line 9769
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/2Q;->A06:Ljava/util/List;

    .line 9770
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/2Q;->A04:Ljava/lang/String;

    .line 9771
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/2Q;->A07:Ljava/util/List;

    .line 9772
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 9773
    .local v0, "subtitles":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/common/MediaItem$Subtitle;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 9774
    invoke-interface {p7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    const/4 v2, 0x0

    const/16 v1, 0x9

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2Q;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9775
    .end local v1    # "i":I
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2Q;->A08:Ljava/util/List;

    .line 9776
    iput-object p8, p0, Lcom/facebook/ads/redexgen/X/2Q;->A03:Ljava/lang/Object;

    .line 9777
    return-void
.end method

.method public synthetic constructor <init>(Landroid/net/Uri;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/2M;Lcom/facebook/ads/redexgen/X/2H;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/2F;)V
    .locals 0

    .line 9778
    invoke-direct/range {p0 .. p8}, Lcom/facebook/ads/redexgen/X/2Q;-><init>(Landroid/net/Uri;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/2M;Lcom/facebook/ads/redexgen/X/2H;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;)V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/2Q;->A09:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x4f

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/2Q;->A09:[B

    return-void

    :array_0
    .array-data 1
        0xet
        0x19t
        0x5t
        0x0t
        0x8t
        0x39t
        0x1ct
        0x3t
        0x2t
        0x71t
        0x78t
        0x6at
        0x71t
        0x5at
        0x76t
        0x7dt
        0x7ct
    .end array-data
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .line 9779
    const/4 v4, 0x1

    if-ne p0, p1, :cond_0

    .line 9780
    return v4

    .line 9781
    :cond_0
    instance-of v1, p1, Lcom/facebook/ads/redexgen/X/2Q;

    const/4 v0, 0x0

    if-nez v1, :cond_1

    .line 9782
    return v0

    .line 9783
    :cond_1
    check-cast p1, Lcom/facebook/ads/redexgen/X/2Q;

    .line 9784
    .local v1, "other":Lcom/facebook/ads/redexgen/X/2Q;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2Q;->A00:Landroid/net/Uri;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/2Q;->A00:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2Q;->A05:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/2Q;->A05:Ljava/lang/String;

    .line 9785
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/4a;->A1E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2Q;->A02:Lcom/facebook/ads/redexgen/X/2M;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/2Q;->A02:Lcom/facebook/ads/redexgen/X/2M;

    .line 9786
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/4a;->A1E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/2Q;->A0A:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x49

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/2Q;->A0A:[Ljava/lang/String;

    const-string v1, "SNoZAEbl0aNlH2coBrY7ADFEuEiuIdsk"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "hNPU4lA8QZuNoOME96TtOhTBwniZIKf2"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const/4 v0, 0x0

    .line 9787
    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/4a;->A1E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2Q;->A06:Ljava/util/List;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/2Q;->A06:Ljava/util/List;

    .line 9788
    invoke-interface {v1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2Q;->A04:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/2Q;->A04:Ljava/lang/String;

    .line 9789
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/4a;->A1E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2Q;->A07:Ljava/util/List;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/2Q;->A07:Ljava/util/List;

    .line 9790
    invoke-interface {v1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2Q;->A03:Ljava/lang/Object;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/2Q;->A03:Ljava/lang/Object;

    .line 9791
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/4a;->A1E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9792
    :goto_0
    return v4

    .line 9793
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final hashCode()I
    .locals 3

    .line 9794
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2Q;->A00:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    .line 9795
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2Q;->A05:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v1, v0

    .line 9796
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2Q;->A02:Lcom/facebook/ads/redexgen/X/2M;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    add-int/2addr v1, v0

    .line 9797
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    const/4 v0, 0x0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    add-int/2addr v1, v0

    .line 9798
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2Q;->A06:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 9799
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2Q;->A04:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_2
    add-int/2addr v1, v0

    .line 9800
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2Q;->A07:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 9801
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2Q;->A03:Ljava/lang/Object;

    if-nez v0, :cond_0

    :goto_3
    add-int/2addr v1, v2

    .line 9802
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1

    .line 9803
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2Q;->A03:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    .line 9804
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2Q;->A04:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    .line 9805
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2Q;->A02:Lcom/facebook/ads/redexgen/X/2M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2M;->hashCode()I

    move-result v0

    goto :goto_1

    .line 9806
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2Q;->A05:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 9807
    :cond_4
    const/16 v2, 0x9

    const/16 v1, 0x8

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2Q;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
