.class public final Lcom/facebook/ads/redexgen/X/2I;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/oi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field public static A0B:[Ljava/lang/String;


# instance fields
.field public A00:Landroid/net/Uri;

.field public A01:Lcom/facebook/ads/redexgen/X/2J;

.field public A02:Lcom/facebook/ads/redexgen/X/2L;

.field public A03:Lcom/facebook/ads/redexgen/X/2O;

.field public A04:Lcom/facebook/ads/redexgen/X/og;

.field public A05:Ljava/lang/Object;

.field public A06:Ljava/lang/String;

.field public A07:Ljava/lang/String;

.field public A08:Ljava/lang/String;

.field public A09:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/androidx/media3/common/StreamKey;",
            ">;"
        }
    .end annotation
.end field

.field public A0A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/androidx/media3/common/MediaItem$SubtitleConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 77
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "HPaW60WB4gFqlzK247iq3uDphWK03Iif"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "KBvaSaTKxPBSHh58MHpb5CG0KegQKkr9"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "b1r5E5Hd4zdNoyuaEQVQsO4l4ctoImRB"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "nKy6zg3qdMWmj624cOZmm65wxaqanW8E"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "pbs"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "7xj4kZWUPnGFCehZwFfpDVbkpfFBWPXP"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "TYkILCf2Xs5AkCVGSR3QMYIpsRVtVxUs"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "J3EyGmSR6mO6g6CSn2CxG4G4HI4UvZHg"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/2I;->A0B:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 9622
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9623
    new-instance v0, Lcom/facebook/ads/redexgen/X/2J;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/2J;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2I;->A01:Lcom/facebook/ads/redexgen/X/2J;

    .line 9624
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/2L;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/2L;-><init>(Lcom/facebook/ads/redexgen/X/2F;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2I;->A02:Lcom/facebook/ads/redexgen/X/2L;

    .line 9625
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2I;->A09:Ljava/util/List;

    .line 9626
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2I;->A0A:Ljava/util/List;

    .line 9627
    new-instance v0, Lcom/facebook/ads/redexgen/X/2O;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/2O;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2I;->A03:Lcom/facebook/ads/redexgen/X/2O;

    .line 9628
    return-void
.end method


# virtual methods
.method public final A00(Landroid/net/Uri;)Lcom/facebook/ads/redexgen/X/2I;
    .locals 0

    .line 9629
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2I;->A00:Landroid/net/Uri;

    .line 9630
    return-object p0
.end method

.method public final A01(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/2I;
    .locals 0

    .line 9631
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2I;->A05:Ljava/lang/Object;

    .line 9632
    return-object p0
.end method

.method public final A02(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2I;
    .locals 0

    .line 9633
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2I;->A06:Ljava/lang/String;

    .line 9634
    return-object p0
.end method

.method public final A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2I;
    .locals 1

    .line 9635
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2I;->A07:Ljava/lang/String;

    .line 9636
    return-object p0
.end method

.method public final A04(Ljava/util/List;)Lcom/facebook/ads/redexgen/X/2I;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/androidx/media3/common/StreamKey;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/2I;"
        }
    .end annotation

    .line 9637
    .local v2, "streamKeys":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/common/StreamKey;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/2I;->A0B:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/2I;->A0B:[Ljava/lang/String;

    const-string v1, "MqTMGNvSZ5CI9kiBQqDgyIk0OkVIIG8t"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-nez v3, :cond_0

    .line 9638
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 9639
    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2I;->A09:Ljava/util/List;

    .line 9640
    return-object p0

    .line 9641
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A05()Lcom/facebook/ads/redexgen/X/oi;
    .locals 11

    .line 9642
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2I;->A02:Lcom/facebook/ads/redexgen/X/2L;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2L;->A00(Lcom/facebook/ads/redexgen/X/2L;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/2I;->A02:Lcom/facebook/ads/redexgen/X/2L;

    sget-object v1, Lcom/facebook/ads/redexgen/X/2I;->A0B:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x31

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/2I;->A0B:[Ljava/lang/String;

    const-string v1, "LsaTJZF6o4X1Tfg01qMfqEHPxyZhwdJj"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/2L;->A03(Lcom/facebook/ads/redexgen/X/2L;)Ljava/util/UUID;

    move-result-object v0

    if-eqz v0, :cond_5

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 9643
    const/4 v1, 0x0

    .line 9644
    .local v0, "localConfiguration":Lcom/facebook/ads/redexgen/X/oj;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2I;->A00:Landroid/net/Uri;

    .line 9645
    .local p0, "uri":Landroid/net/Uri;
    if-eqz v2, :cond_1

    .line 9646
    new-instance v1, Lcom/facebook/ads/redexgen/X/oj;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/2I;->A08:Ljava/lang/String;

    .line 9647
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2I;->A02:Lcom/facebook/ads/redexgen/X/2L;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2L;->A03(Lcom/facebook/ads/redexgen/X/2L;)Ljava/util/UUID;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2I;->A02:Lcom/facebook/ads/redexgen/X/2L;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2L;->A08()Lcom/facebook/ads/redexgen/X/2M;

    move-result-object v4

    :goto_1
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/2I;->A09:Ljava/util/List;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/2I;->A06:Ljava/lang/String;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/2I;->A0A:Ljava/util/List;

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/2I;->A05:Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/facebook/ads/redexgen/X/oj;-><init>(Landroid/net/Uri;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/2M;Lcom/facebook/ads/redexgen/X/2H;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/2F;)V

    .line 9648
    :cond_1
    new-instance v2, Lcom/facebook/ads/redexgen/X/oi;

    .line 9649
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2I;->A07:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/2I;->A07:Ljava/lang/String;

    :goto_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2I;->A01:Lcom/facebook/ads/redexgen/X/2J;

    .line 9650
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2J;->A0B()Lcom/facebook/ads/redexgen/X/9r;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2I;->A03:Lcom/facebook/ads/redexgen/X/2O;

    .line 9651
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2O;->A05()Lcom/facebook/ads/redexgen/X/ok;

    move-result-object v6

    .line 9652
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2I;->A04:Lcom/facebook/ads/redexgen/X/og;

    if-eqz v0, :cond_2

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/2I;->A04:Lcom/facebook/ads/redexgen/X/og;

    :goto_3
    const/4 v8, 0x0

    move-object v5, v1

    invoke-direct/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/oi;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/9r;Lcom/facebook/ads/redexgen/X/oj;Lcom/facebook/ads/redexgen/X/ok;Lcom/facebook/ads/redexgen/X/og;Lcom/facebook/ads/redexgen/X/2F;)V

    .line 9653
    return-object v2

    .line 9654
    :cond_2
    sget-object v7, Lcom/facebook/ads/redexgen/X/og;->A0Z:Lcom/facebook/ads/redexgen/X/og;

    goto :goto_3

    .line 9655
    :cond_3
    const-string v3, ""

    goto :goto_2

    .line 9656
    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    .line 9657
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
