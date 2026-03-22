.class public final Lcom/facebook/ads/redexgen/X/bq;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/bt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JSCall"
.end annotation


# instance fields
.field public final A00:Ljava/lang/String;

.field public final A01:Z

.field public final A02:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 77263
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/bq;-><init>(Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 77264
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 0

    .line 77265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77266
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bq;->A00:Ljava/lang/String;

    .line 77267
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/bq;->A02:[Ljava/lang/String;

    .line 77268
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/bq;->A01:Z

    .line 77269
    return-void
.end method
