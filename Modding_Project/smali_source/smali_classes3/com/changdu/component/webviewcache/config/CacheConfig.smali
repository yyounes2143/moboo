.class public Lcom/changdu/component/webviewcache/config/CacheConfig;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/changdu/component/webviewcache/config/CacheConfig$Builder;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:J

.field public d:I

.field public e:Lcom/changdu/component/webviewcache/config/MimeTypeFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getCacheDir()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/changdu/component/webviewcache/config/CacheConfig;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDiskCacheSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/changdu/component/webviewcache/config/CacheConfig;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getFilter()Lcom/changdu/component/webviewcache/config/MimeTypeFilter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/changdu/component/webviewcache/config/CacheConfig;->e:Lcom/changdu/component/webviewcache/config/MimeTypeFilter;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMemCacheSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/changdu/component/webviewcache/config/CacheConfig;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public getVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/changdu/component/webviewcache/config/CacheConfig;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public setVersion(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/changdu/component/webviewcache/config/CacheConfig;->b:I

    .line 2
    .line 3
    return-void
.end method
