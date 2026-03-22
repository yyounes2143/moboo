.class Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$1;
.super Landroidx/media/VolumeProviderCompat$Callback;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;


# virtual methods
.method public onVolumeChanged(Landroidx/media/VolumeProviderCompat;)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->Wwwwww:Landroidx/media/VolumeProviderCompat;

    .line 4
    .line 5
    if-eq v0, p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v1, Landroid/support/v4/media/session/ParcelableVolumeInfo;

    .line 9
    .line 10
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    .line 11
    .line 12
    iget v2, v0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->Wwwwwwww:I

    .line 13
    .line 14
    iget v3, v0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->Wwwwwww:I

    .line 15
    .line 16
    invoke-virtual {p1}, Landroidx/media/VolumeProviderCompat;->getVolumeControl()I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    invoke-virtual {p1}, Landroidx/media/VolumeProviderCompat;->getMaxVolume()I

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    invoke-virtual {p1}, Landroidx/media/VolumeProviderCompat;->getCurrentVolume()I

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    invoke-direct/range {v1 .. v6}, Landroid/support/v4/media/session/ParcelableVolumeInfo;-><init>(IIIII)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    .line 32
    .line 33
    invoke-virtual {p1, v1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->Wwwwwwwwwwwwwww(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
