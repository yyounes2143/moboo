.class public final synthetic LWwwwwwwwwwwwwwwwwwww/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwww:J

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/component/deeplink/base/CDInstallChannel;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/cd_core4/cd_deep_link/CdDeepLinkPlugin;


# direct methods
.method public synthetic constructor <init>(Lcom/cd_core4/cd_deep_link/CdDeepLinkPlugin;Ljava/lang/String;Lcom/changdu/component/deeplink/base/CDInstallChannel;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LWwwwwwwwwwwwwwwwwwww/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/cd_core4/cd_deep_link/CdDeepLinkPlugin;

    .line 5
    .line 6
    iput-object p2, p0, LWwwwwwwwwwwwwwwwwwww/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, LWwwwwwwwwwwwwwwwwwww/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/component/deeplink/base/CDInstallChannel;

    .line 9
    .line 10
    iput-wide p4, p0, LWwwwwwwwwwwwwwwwwwww/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwww:J

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, LWwwwwwwwwwwwwwwwwwww/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/cd_core4/cd_deep_link/CdDeepLinkPlugin;

    .line 2
    .line 3
    iget-object v1, p0, LWwwwwwwwwwwwwwwwwwww/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, LWwwwwwwwwwwwwwwwwwww/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/component/deeplink/base/CDInstallChannel;

    .line 6
    .line 7
    iget-wide v3, p0, LWwwwwwwwwwwwwwwwwwww/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwww:J

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3, v4}, Lcom/cd_core4/cd_deep_link/CdDeepLinkPlugin$init$1$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/cd_core4/cd_deep_link/CdDeepLinkPlugin;Ljava/lang/String;Lcom/changdu/component/deeplink/base/CDInstallChannel;J)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
