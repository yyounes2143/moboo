.class public final Lcom/facebook/ads/redexgen/X/eH;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/eJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadConfig"
.end annotation


# instance fields
.field public final A00:J

.field public final A01:Lcom/facebook/ads/redexgen/X/eI;

.field public final A02:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/eI;JZ)V
    .locals 0

    .line 79990
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79991
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/eH;->A01:Lcom/facebook/ads/redexgen/X/eI;

    .line 79992
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/eH;->A00:J

    .line 79993
    iput-boolean p4, p0, Lcom/facebook/ads/redexgen/X/eH;->A02:Z

    .line 79994
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/eI;JZLcom/facebook/ads/redexgen/X/eG;)V
    .locals 0

    .line 79995
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/eH;-><init>(Lcom/facebook/ads/redexgen/X/eI;JZ)V

    return-void
.end method
