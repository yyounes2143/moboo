.class public final Lcom/facebook/ads/redexgen/X/md;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/BC;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/9H;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DownloadCursorImpl"
.end annotation


# instance fields
.field public final A00:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0

    .line 98999
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99000
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/md;->A00:Landroid/database/Cursor;

    .line 99001
    return-void
.end method

.method public synthetic constructor <init>(Landroid/database/Cursor;Lcom/facebook/ads/redexgen/X/B4;)V
    .locals 0

    .line 99002
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/md;-><init>(Landroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public final A00()Lcom/facebook/ads/redexgen/X/B8;
    .locals 1

    .line 99003
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/md;->A00:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9H;->A03(Landroid/database/Cursor;)Lcom/facebook/ads/redexgen/X/B8;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic A01()Z
    .locals 1

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/BB;->A00(Lcom/facebook/ads/redexgen/X/BC;)Z

    move-result v0

    return v0
.end method

.method public final close()V
    .locals 1

    .line 99004
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/md;->A00:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 99005
    return-void
.end method

.method public final getPosition()I
    .locals 1

    .line 99006
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/md;->A00:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    return v0
.end method

.method public final moveToPosition(I)Z
    .locals 1

    .line 99007
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/md;->A00:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method
