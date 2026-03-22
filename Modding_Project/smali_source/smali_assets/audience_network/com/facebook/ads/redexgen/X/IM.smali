.class public final Lcom/facebook/ads/redexgen/X/IM;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/IO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StsdData"
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Lcom/facebook/ads/redexgen/X/or;

.field public final A03:[Lcom/facebook/ads/redexgen/X/In;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 40327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40328
    new-array v0, p1, [Lcom/facebook/ads/redexgen/X/In;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A03:[Lcom/facebook/ads/redexgen/X/In;

    .line 40329
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A01:I

    .line 40330
    return-void
.end method
