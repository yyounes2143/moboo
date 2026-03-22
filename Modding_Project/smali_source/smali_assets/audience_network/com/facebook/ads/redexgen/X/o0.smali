.class public final Lcom/facebook/ads/redexgen/X/o0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/1S;


# static fields
.field public static final A02:Lcom/facebook/ads/redexgen/X/1R;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/1R<",
            "Lcom/facebook/ads/redexgen/X/o0;",
            ">;"
        }
    .end annotation
.end field

.field public static final A03:Lcom/facebook/ads/redexgen/X/o0;

.field public static final A04:Ljava/lang/String;

.field public static final A05:Ljava/lang/String;


# instance fields
.field public final A00:J

.field public final A01:Ljava/util/List;
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Oculus does not work well with Google Guava"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/o2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 3191
    invoke-static {}, Lcom/facebook/ads/redexgen/X/i1;->A01()Ljava/util/List;

    move-result-object v3

    const-wide/16 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/o0;

    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/ads/redexgen/X/o0;-><init>(Ljava/util/List;J)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/o0;->A03:Lcom/facebook/ads/redexgen/X/o0;

    .line 3192
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/o0;->A04:Ljava/lang/String;

    .line 3193
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/o0;->A05:Ljava/lang/String;

    .line 3194
    new-instance v0, Lcom/facebook/ads/redexgen/X/o1;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/o1;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/o0;->A02:Lcom/facebook/ads/redexgen/X/1R;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;J)V
    .locals 1
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Oculus does not work well with Google Guava"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/o2;",
            ">;J)V"
        }
    .end annotation

    .line 101232
    .local p1, "cues":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/common/text/Cue;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101233
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/o2;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/o2;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/i1;->A03([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/o0;->A01:Ljava/util/List;

    .line 101234
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/o0;->A00:J

    .line 101235
    return-void
.end method

.method public static final A00(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/o0;
    .locals 4

    .line 101236
    sget-object v0, Lcom/facebook/ads/redexgen/X/o0;->A04:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 101237
    .local v0, "cueBundles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    if-nez v1, :cond_0

    .line 101238
    invoke-static {}, Lcom/facebook/ads/redexgen/X/i1;->A01()Ljava/util/List;

    move-result-object v3

    .line 101239
    .local v1, "cues":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/common/text/Cue;>;"
    :goto_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/o0;->A05:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 101240
    .local v2, "presentationTimeUs":J
    new-instance v0, Lcom/facebook/ads/redexgen/X/o0;

    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/ads/redexgen/X/o0;-><init>(Ljava/util/List;J)V

    return-object v0

    .line 101241
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/o2;->A0I:Lcom/facebook/ads/redexgen/X/1R;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/3S;->A01(Lcom/facebook/ads/redexgen/X/1R;Ljava/util/List;)Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v3

    goto :goto_0
.end method

.method public static synthetic A01(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/o0;
    .locals 0

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/o0;->A00(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/o0;

    move-result-object p0

    return-object p0
.end method
