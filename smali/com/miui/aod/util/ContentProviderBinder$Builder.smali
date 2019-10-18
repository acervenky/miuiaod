.class public Lcom/miui/aod/util/ContentProviderBinder$Builder;
.super Ljava/lang/Object;
.source "ContentProviderBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/aod/util/ContentProviderBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBinder:Lcom/miui/aod/util/ContentProviderBinder;


# direct methods
.method public constructor <init>(Lcom/miui/aod/util/ContentProviderBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/aod/util/ContentProviderBinder$Builder;->mBinder:Lcom/miui/aod/util/ContentProviderBinder;

    return-void
.end method


# virtual methods
.method public setColumns([Ljava/lang/String;)Lcom/miui/aod/util/ContentProviderBinder$Builder;
    .locals 1

    iget-object v0, p0, Lcom/miui/aod/util/ContentProviderBinder$Builder;->mBinder:Lcom/miui/aod/util/ContentProviderBinder;

    iput-object p1, v0, Lcom/miui/aod/util/ContentProviderBinder;->mColumns:[Ljava/lang/String;

    return-object p0
.end method

.method public setWhere(Ljava/lang/String;)Lcom/miui/aod/util/ContentProviderBinder$Builder;
    .locals 1

    iget-object v0, p0, Lcom/miui/aod/util/ContentProviderBinder$Builder;->mBinder:Lcom/miui/aod/util/ContentProviderBinder;

    iput-object p1, v0, Lcom/miui/aod/util/ContentProviderBinder;->mWhere:Ljava/lang/String;

    return-object p0
.end method
