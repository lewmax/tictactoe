T getFlavorDependentValue<T>(T devValue, T prodValue) {
  const environment = String.fromEnvironment('environment', defaultValue: 'dev');
  return environment == 'dev' ? devValue : prodValue;
}
