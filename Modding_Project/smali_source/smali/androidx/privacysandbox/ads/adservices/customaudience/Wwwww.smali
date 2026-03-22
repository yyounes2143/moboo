.class public final synthetic Landroidx/privacysandbox/ads/adservices/customaudience/Wwwww;
.super Ljava/lang/Object;
.source "Proguard"


# direct methods
.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest$Builder;Lj$/time/Instant;)Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/time/TimeConversions;->convert(Lj$/time/Instant;)Ljava/time/Instant;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest$Builder;->setExpirationTime(Ljava/time/Instant;)Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method
