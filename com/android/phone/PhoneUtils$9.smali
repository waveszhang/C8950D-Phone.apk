.class final Lcom/android/phone/PhoneUtils$9;
.super Ljava/lang/Object;
.source "PhoneUtils.java"

# interfaces
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 2978
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .registers 7
    .parameter "token"
    .parameter "cookie"
    .parameter "ci"

    .prologue
    .line 2986
    move-object v0, p2

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 2991
    .local v0, conn:Lcom/android/internal/telephony/Connection;
    iget-boolean v2, p3, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-nez v2, :cond_13

    invoke-virtual {p3}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v2

    if-nez v2, :cond_13

    invoke-virtual {p3}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 3008
    :cond_13
    iget v2, p3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    if-nez v2, :cond_1d

    .line 3009
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    iput v2, p3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 3028
    :cond_1d
    :goto_1d
    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    .line 3029
    return-void

    .line 3016
    :cond_21
    const/4 v2, 0x0

    invoke-static {v2, v0}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 3020
    .local v1, newCi:Lcom/android/internal/telephony/CallerInfo;
    if-eqz v1, :cond_1d

    .line 3021
    iget-object v2, p3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 3022
    iget-object v2, p3, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    .line 3023
    move-object p3, v1

    goto :goto_1d
.end method
