package wooteco.subway.exception.auth;

public class InvalidTokenException extends AuthorizationException {
    private static final String MESSAGE = "유효하지 않은 토큰입니다.";

    public InvalidTokenException() {
        super(MESSAGE);
    }
}
