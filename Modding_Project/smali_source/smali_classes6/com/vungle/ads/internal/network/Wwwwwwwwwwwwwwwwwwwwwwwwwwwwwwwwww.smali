.class public final synthetic Lcom/vungle/ads/internal/network/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwww:Z

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/vungle/ads/internal/network/TpatRequest;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/vungle/ads/internal/network/TpatSender;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/network/TpatSender;Lcom/vungle/ads/internal/network/TpatRequest;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/vungle/ads/internal/network/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/vungle/ads/internal/network/TpatSender;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/vungle/ads/internal/network/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/vungle/ads/internal/network/TpatRequest;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/vungle/ads/internal/network/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/vungle/ads/internal/network/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwww:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/network/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/vungle/ads/internal/network/TpatSender;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/vungle/ads/internal/network/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/vungle/ads/internal/network/TpatRequest;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/vungle/ads/internal/network/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/vungle/ads/internal/network/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwww:Z

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/vungle/ads/internal/network/TpatSender;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/vungle/ads/internal/network/TpatSender;Lcom/vungle/ads/internal/network/TpatRequest;Ljava/lang/String;Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
