.class public final Lcom/facebook/ads/redexgen/X/Zn;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Zo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageDownloadResult"
.end annotation


# instance fields
.field public A00:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 75409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75410
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Zn;->A00:Landroid/graphics/Bitmap;

    .line 75411
    return-void
.end method


# virtual methods
.method public final A00()Landroid/graphics/Bitmap;
    .locals 1

    .line 75412
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zn;->A00:Landroid/graphics/Bitmap;

    return-object v0
.end method
