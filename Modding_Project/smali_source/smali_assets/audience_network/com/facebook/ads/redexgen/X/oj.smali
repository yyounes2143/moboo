.class public final Lcom/facebook/ads/redexgen/X/oj;
.super Lcom/facebook/ads/redexgen/X/2Q;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/oi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlaybackProperties"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/2M;Lcom/facebook/ads/redexgen/X/2H;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;)V
    .locals 10
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

    .line 102187
    .local p5, "streamKeys":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/common/StreamKey;>;"
    .local p7, "subtitleConfigurations":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/common/MediaItem$SubtitleConfiguration;>;"
    const/4 v9, 0x0

    move-object v0, p0

    move-object/from16 v8, p8

    move-object/from16 v7, p7

    move-object/from16 v6, p6

    move-object v5, p5

    move-object v4, p4

    move-object v3, p3

    move-object v2, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/facebook/ads/redexgen/X/2Q;-><init>(Landroid/net/Uri;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/2M;Lcom/facebook/ads/redexgen/X/2H;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/2F;)V

    .line 102188
    return-void
.end method

.method public synthetic constructor <init>(Landroid/net/Uri;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/2M;Lcom/facebook/ads/redexgen/X/2H;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/2F;)V
    .locals 0

    .line 102189
    invoke-direct/range {p0 .. p8}, Lcom/facebook/ads/redexgen/X/oj;-><init>(Landroid/net/Uri;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/2M;Lcom/facebook/ads/redexgen/X/2H;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;)V

    return-void
.end method
