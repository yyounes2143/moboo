.class Lcom/devlxx/disable_screenshots/ScreenShotListenManager$MediaContentObserver;
.super Landroid/database/ContentObserver;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/devlxx/disable_screenshots/ScreenShotListenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MediaContentObserver"
.end annotation


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/devlxx/disable_screenshots/ScreenShotListenManager;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/devlxx/disable_screenshots/ScreenShotListenManager;Landroid/net/Uri;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/devlxx/disable_screenshots/ScreenShotListenManager$MediaContentObserver;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/devlxx/disable_screenshots/ScreenShotListenManager;

    .line 2
    .line 3
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/devlxx/disable_screenshots/ScreenShotListenManager$MediaContentObserver;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/net/Uri;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/devlxx/disable_screenshots/ScreenShotListenManager$MediaContentObserver;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/devlxx/disable_screenshots/ScreenShotListenManager;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/devlxx/disable_screenshots/ScreenShotListenManager$MediaContentObserver;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/net/Uri;

    .line 7
    .line 8
    invoke-static {p1, v0}, Lcom/devlxx/disable_screenshots/ScreenShotListenManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/devlxx/disable_screenshots/ScreenShotListenManager;Landroid/net/Uri;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
