.class public final Lcom/facebook/ads/redexgen/X/S8;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/SF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CacheData"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:Ljava/lang/String;

.field public final A02:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 63481
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/S8;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 63482
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 63483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63484
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/S8;->A02:Ljava/lang/String;

    .line 63485
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/S8;->A01:Ljava/lang/String;

    .line 63486
    iput p3, p0, Lcom/facebook/ads/redexgen/X/S8;->A00:I

    .line 63487
    return-void
.end method
